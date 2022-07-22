defmodule Test do 
  def element_wise_product(input1, input2) 
    do
        if !is_list(input1) or !is_list(input2) do
            raise "リストの長さが違いますので、計算ができません。 The lengths of sub-arrays are different, so calculation is impossible."
        end
        zipped = List.zip([input1, input2])
        Enum.map(zipped, 
        fn {o, t} -> 
            if is_integer(o) and is_integer(t) do
                o*t
            else
                Test.element_wise_product(o, t)
            end
        end)
    end
end
