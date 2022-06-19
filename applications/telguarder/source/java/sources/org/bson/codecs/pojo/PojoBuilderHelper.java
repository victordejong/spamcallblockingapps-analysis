package org.bson.codecs.pojo;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import org.bson.assertions.Assertions;
import org.bson.codecs.pojo.PropertyReflectionUtils;
import org.bson.codecs.pojo.TypeData;
import org.bson.codecs.pojo.TypeParameterMap;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/PojoBuilderHelper.class */
public final class PojoBuilderHelper {
    private PojoBuilderHelper() {
    }

    private static <T, S> void cachePropertyTypeData(PropertyMetadata<T> propertyMetadata, Map<String, TypeParameterMap> map, TypeData<S> typeData, List<String> list, Type type) {
        TypeParameterMap typeParameterMap = getTypeParameterMap(list, type);
        map.put(propertyMetadata.getName(), typeParameterMap);
        propertyMetadata.typeParameterInfo(typeParameterMap, typeData);
    }

    public static <T> void configureClassModelBuilder(ClassModelBuilder<T> classModelBuilder, Class<T> cls) {
        Field[] declaredFields;
        Annotation[] declaredAnnotations;
        classModelBuilder.type((Class) Assertions.notNull("clazz", cls));
        ArrayList arrayList = new ArrayList();
        TreeSet<String> treeSet = new TreeSet();
        Map<String, TypeParameterMap> hashMap = new HashMap<>();
        String simpleName = cls.getSimpleName();
        HashMap hashMap2 = new HashMap();
        Class<T> cls2 = cls;
        TypeData typeData = null;
        while (!cls2.isEnum() && cls2.getSuperclass() != null) {
            arrayList.addAll(Arrays.asList(cls2.getDeclaredAnnotations()));
            ArrayList arrayList2 = new ArrayList();
            for (TypeVariable<Class<T>> typeVariable : cls2.getTypeParameters()) {
                arrayList2.add(typeVariable.getName());
            }
            PropertyReflectionUtils.PropertyMethods propertyMethods = PropertyReflectionUtils.getPropertyMethods(cls2);
            for (Method method : propertyMethods.getSetterMethods()) {
                String propertyName = PropertyReflectionUtils.toPropertyName(method);
                treeSet.add(propertyName);
                PropertyMetadata orCreateMethodPropertyMetadata = getOrCreateMethodPropertyMetadata(propertyName, simpleName, hashMap2, TypeData.newInstance(method), hashMap, typeData, arrayList2, getGenericType(method));
                if (orCreateMethodPropertyMetadata.getSetter() == null) {
                    orCreateMethodPropertyMetadata.setSetter(method);
                    for (Annotation annotation : method.getDeclaredAnnotations()) {
                        orCreateMethodPropertyMetadata.addWriteAnnotation(annotation);
                    }
                }
            }
            for (Method method2 : propertyMethods.getGetterMethods()) {
                String propertyName2 = PropertyReflectionUtils.toPropertyName(method2);
                treeSet.add(propertyName2);
                PropertyMetadata propertyMetadata = (PropertyMetadata) hashMap2.get(propertyName2);
                if (propertyMetadata == null || propertyMetadata.getGetter() == null) {
                    PropertyMetadata orCreateMethodPropertyMetadata2 = getOrCreateMethodPropertyMetadata(propertyName2, simpleName, hashMap2, TypeData.newInstance(method2), hashMap, typeData, arrayList2, getGenericType(method2));
                    if (orCreateMethodPropertyMetadata2.getGetter() == null) {
                        orCreateMethodPropertyMetadata2.setGetter(method2);
                        for (Annotation annotation2 : method2.getDeclaredAnnotations()) {
                            orCreateMethodPropertyMetadata2.addReadAnnotation(annotation2);
                        }
                    }
                }
            }
            for (Field field : cls2.getDeclaredFields()) {
                treeSet.add(field.getName());
                PropertyMetadata orCreateFieldPropertyMetadata = getOrCreateFieldPropertyMetadata(field.getName(), simpleName, hashMap2, TypeData.newInstance(field), hashMap, typeData, arrayList2, field.getGenericType());
                if (orCreateFieldPropertyMetadata != null && orCreateFieldPropertyMetadata.getField() == null) {
                    orCreateFieldPropertyMetadata.field(field);
                    for (Annotation annotation3 : field.getDeclaredAnnotations()) {
                        orCreateFieldPropertyMetadata.addReadAnnotation(annotation3);
                        orCreateFieldPropertyMetadata.addWriteAnnotation(annotation3);
                    }
                }
            }
            typeData = TypeData.newInstance(cls2.getGenericSuperclass(), cls2);
            cls2 = cls2.getSuperclass();
        }
        if (cls2.isInterface()) {
            arrayList.addAll(Arrays.asList(cls2.getDeclaredAnnotations()));
        }
        for (String str : treeSet) {
            PropertyMetadata propertyMetadata2 = (PropertyMetadata) hashMap2.get(str);
            if (propertyMetadata2.isSerializable() || propertyMetadata2.isDeserializable()) {
                classModelBuilder.addProperty(createPropertyModelBuilder(propertyMetadata2));
            }
        }
        Collections.reverse(arrayList);
        classModelBuilder.annotations(arrayList);
        classModelBuilder.propertyNameToTypeParameterMap(hashMap);
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        int length = declaredConstructors.length;
        int i = 0;
        Constructor<?> constructor = null;
        while (true) {
            Constructor<?> constructor2 = constructor;
            if (i >= length) {
                classModelBuilder.instanceCreatorFactory(new InstanceCreatorFactoryImpl<>(new CreatorExecutable(cls, constructor2)));
                return;
            }
            Constructor<?> constructor3 = declaredConstructors[i];
            Constructor<?> constructor4 = constructor2;
            if (constructor3.getParameterTypes().length == 0) {
                if (!Modifier.isPublic(constructor3.getModifiers())) {
                    constructor4 = constructor2;
                    if (!Modifier.isProtected(constructor3.getModifiers())) {
                    }
                }
                constructor3.setAccessible(true);
                constructor4 = constructor3;
            }
            i++;
            constructor = constructor4;
        }
    }

    public static <T> PropertyModelBuilder<T> createPropertyModelBuilder(PropertyMetadata<T> propertyMetadata) {
        PropertyModelBuilder<T> error = PropertyModel.builder().propertyName(propertyMetadata.getName()).readName(propertyMetadata.getName()).writeName(propertyMetadata.getName()).typeData(propertyMetadata.getTypeData()).readAnnotations(propertyMetadata.getReadAnnotations()).writeAnnotations(propertyMetadata.getWriteAnnotations()).propertySerialization(new PropertyModelSerializationImpl()).propertyAccessor(new PropertyAccessorImpl(propertyMetadata)).setError(propertyMetadata.getError());
        if (propertyMetadata.getTypeParameters() != null) {
            specializePropertyModelBuilder(error, propertyMetadata);
        }
        return error;
    }

    private static Type getGenericType(Method method) {
        return PropertyReflectionUtils.isGetter(method) ? method.getGenericReturnType() : method.getGenericParameterTypes()[0];
    }

    private static <T, S> PropertyMetadata<T> getOrCreateFieldPropertyMetadata(String str, String str2, Map<String, PropertyMetadata<?>> map, TypeData<T> typeData, Map<String, TypeParameterMap> map2, TypeData<S> typeData2, List<String> list, Type type) {
        PropertyMetadata<T> orCreatePropertyMetadata = getOrCreatePropertyMetadata(str, str2, map, typeData);
        if (!orCreatePropertyMetadata.getTypeData().getType().isAssignableFrom(typeData.getType())) {
            return null;
        }
        cachePropertyTypeData(orCreatePropertyMetadata, map2, typeData2, list, type);
        return orCreatePropertyMetadata;
    }

    private static <T, S> PropertyMetadata<T> getOrCreateMethodPropertyMetadata(String str, String str2, Map<String, PropertyMetadata<?>> map, TypeData<T> typeData, Map<String, TypeParameterMap> map2, TypeData<S> typeData2, List<String> list, Type type) {
        PropertyMetadata<T> orCreatePropertyMetadata = getOrCreatePropertyMetadata(str, str2, map, typeData);
        if (!isAssignableClass(orCreatePropertyMetadata.getTypeData().getType(), typeData.getType())) {
            orCreatePropertyMetadata.setError(String.format("Property '%s' in %s, has differing data types: %s and %s.", str, str2, orCreatePropertyMetadata.getTypeData(), typeData));
        }
        cachePropertyTypeData(orCreatePropertyMetadata, map2, typeData2, list, type);
        return orCreatePropertyMetadata;
    }

    private static <T> PropertyMetadata<T> getOrCreatePropertyMetadata(String str, String str2, Map<String, PropertyMetadata<?>> map, TypeData<T> typeData) {
        PropertyMetadata<?> propertyMetadata = map.get(str);
        PropertyMetadata<?> propertyMetadata2 = propertyMetadata;
        if (propertyMetadata == null) {
            propertyMetadata2 = new PropertyMetadata<>(str, str2, typeData);
            map.put(str, propertyMetadata2);
        }
        return (PropertyMetadata<T>) propertyMetadata2;
    }

    private static TypeParameterMap getTypeParameterMap(List<String> list, Type type) {
        int indexOf = list.indexOf(type.toString());
        TypeParameterMap.Builder builder = TypeParameterMap.builder();
        if (indexOf != -1) {
            builder.addIndex(indexOf);
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            for (int i = 0; i < parameterizedType.getActualTypeArguments().length; i++) {
                int indexOf2 = list.indexOf(parameterizedType.getActualTypeArguments()[i].toString());
                if (indexOf2 != -1) {
                    builder.addIndex(i, indexOf2);
                }
            }
        }
        return builder.build();
    }

    private static boolean isAssignableClass(Class<?> cls, Class<?> cls2) {
        return cls.isAssignableFrom(cls2) || cls2.isAssignableFrom(cls);
    }

    private static <V> void specializePropertyModelBuilder(PropertyModelBuilder<V> propertyModelBuilder, PropertyMetadata<V> propertyMetadata) {
        TypeData<?> typeData;
        if (!propertyMetadata.getTypeParameterMap().hasTypeParameters() || propertyMetadata.getTypeParameters().isEmpty()) {
            return;
        }
        Map<Integer, Integer> propertyToClassParamIndexMap = propertyMetadata.getTypeParameterMap().getPropertyToClassParamIndexMap();
        Integer num = propertyToClassParamIndexMap.get(-1);
        if (num != null) {
            typeData = propertyMetadata.getTypeParameters().get(num.intValue());
        } else {
            TypeData.Builder builder = TypeData.builder(propertyModelBuilder.getTypeData().getType());
            ArrayList arrayList = new ArrayList(propertyModelBuilder.getTypeData().getTypeParameters());
            for (int i = 0; i < arrayList.size(); i++) {
                for (Map.Entry<Integer, Integer> entry : propertyToClassParamIndexMap.entrySet()) {
                    if (entry.getKey().equals(Integer.valueOf(i))) {
                        arrayList.set(i, propertyMetadata.getTypeParameters().get(entry.getValue().intValue()));
                    }
                }
            }
            builder.addTypeParameters(arrayList);
            typeData = builder.build();
        }
        propertyModelBuilder.typeData(typeData);
    }

    public static <V> V stateNotNull(String str, V v) {
        if (v != null) {
            return v;
        }
        throw new IllegalStateException(String.format("%s cannot be null", str));
    }
}
