gets
numbers = gets.chomp.split(' ').map(&:to_i)

def shiftonly(numbers)
  count = 0
  counts = []
  numbers.each do |num|
    while num % 2 == 0
      num /= 2
      count += 1
    end
    counts = counts.push(count)
    count = 0
  end
  p counts.min
end
shiftonly(numbers)