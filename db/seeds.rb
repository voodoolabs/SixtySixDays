# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
require 'csv'

User.delete_all
Task.delete_all
# Category.delete_all
# Task.delete_all
Group.delete_all

User.create(username: 'DarthVader', email: 'nick.smit@gmail.com', password: 'metime', password_confirmation: 'metime')
User.create(username: 'BigDickBaller', email: 'davidlazarus89@gmail.com', password: 'stdcity', password_confirmation: 'stdcity')
User.create(username: 'Destroyer', email: 'ruben.casimir@gmail.com', password: 'rapeandpilage', password_confirmation: 'rapeandpilage')
User.create(username: 'Minishredder', email: 'david.broere@gmail.com', password: 'braveheart', password_confirmation: 'braveheart')
User.create(username: 'Stephpapp', email: 'sep0104@gmail.com', password: 'queenbee', password_confirmation: 'queenbee')
User.create(username: 'G-Selena', email: 'selena.garrahan@gmail.com', password: 'gangstar', password_confirmation: 'gangstar')
User.create(username: 'Ndowat', email: 'ndowat@gmail.com', password: 'kobelovesme', password_confirmation: 'kobelovesme')

group_one = Group.create(title: 'One Day Kings')

User.all.each do |user|
  group_one.users << user
end

20.times do 
    Task.create(title: Faker::Name.name, description: Faker::Lorem.sentence(14), status: 'pending')
  end