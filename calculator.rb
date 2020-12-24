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
end



RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end
  
  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(5,1)
      expect(result).to eq(4)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(5,5)
      expect(result).to eq(25)
    end
  end

  describe '#divide' do
    it 'should return the quotient' do
      calculator = Calculator.new
      result = calculator.divide(30,6)
      expect(result).to eq(5)
    end
  end

  describe '#square' do
    it 'should return the square' do
      calculator = Calculator.new
      result = calculator.square(5)
      expect(result).to eq(25)
    end
  end

  describe '#power' do
    it 'will return the power of two numbers' do
      calculator = Calculator.new
      result = calculator.power(2,3)
      expect(result).to eq(8)
    end
  end
end