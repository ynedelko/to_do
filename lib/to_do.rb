class Task
  @@all_descriptions = []

  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all_descriptions
  end

  define_method(:save) do
    @@all_descriptions.push(self)
  end

  define_singleton_method(:clear) do
    @@all_descriptions = []
  end
  
end
