def swap!(arr, a, b)
  if a < arr.length && b < arr.length
    temp = arr[a]
    arr[a] = arr[b]
    arr[b] = temp
  end
end

def bubble!(arr)
  swapped = false
  for i in 1...arr.length
    if arr[i] < arr[i - 1]
      swap!(arr, i, i - 1)
      swapped = true
    end
  end
  swapped
end

def bubble_sort(arr)
  arr = Array.new(arr)
  return arr if arr.length < 2
  swapped = bubble!(arr)
  while swapped
    swapped = bubble!(arr)
  end
  arr
end

def random_int_array(length, range)
  arr = []
  rng = Random.new
  length.times do
    arr << rng.rand(range)
  end
  arr
end

arr_to_sort = random_int_array(10, -40..40)

print "bubble_sort(#{arr_to_sort})"
puts
print bubble_sort(arr_to_sort)
puts
