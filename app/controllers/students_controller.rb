class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new 

  end 

  def create 
    @new_student = Student.create(first_name: params[:student][:first_name],last_name: params[:student][:last_name])
    render('new')
    # new_student.save
    # redirect_to students_path
  end 
end
