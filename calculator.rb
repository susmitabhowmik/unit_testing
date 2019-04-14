require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def remainder(dividend, divisor)
    return dividend % divisor
  end

  def cube(number)
    return number ** 3
  end

  def abs (number)
    if number > 0
      return number
    else 
      return number * -1
    end
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
  end 

  describe '#subtract' do
    it 'should return the difference between two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(2,5)
      expect(result).to eq(-3)
    end  
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(-3,7)
      expect(result).to eq(-21)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(45,-9)
      expect(result).to eq(-5)
    end
  end
    
  describe '#square' do
    it 'should return the square of two numbers' do
      calculator = Calculator.new
      result = calculator.square(-5)
      expect(result).to eq(25)
    end
  end
    
  describe '#power' do
    it 'should return the power of a number raised to an exponent' do
      calculator = Calculator.new
      result = calculator.power(2,3)
      expect(result).to eq(8)
    end
  end

  describe '#remainder' do
    it 'should return the remainder of a number after division' do
      calculator = Calculator.new
      result = calculator.remainder(10,4)
      expect(result).to eq(2)
    end
  end

  describe '#cube' do
    it 'should cube a number and return the result' do
      calculator = Calculator.new
      result = calculator.cube(3)
      expect(result).to eq(27)
    end
  end

  describe '#abs' do
    it 'should return the absolute value of a number' do
      calculator = Calculator.new
      result = calculator.abs(-9)
      expect(result).to eq(9)
    end
  end
end