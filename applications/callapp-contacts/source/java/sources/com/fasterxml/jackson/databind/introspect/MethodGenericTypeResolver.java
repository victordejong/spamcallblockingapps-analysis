package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.TypeResolutionContext;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver.class */
final class MethodGenericTypeResolver {
    MethodGenericTypeResolver() {
    }

    static TypeBindings bindMethodTypeParameters(Method method, JavaType javaType, TypeResolutionContext typeResolutionContext) {
        JavaType boundType;
        TypeVariable<?> findByName;
        TypeVariable<Method>[] typeParameters = method.getTypeParameters();
        if (typeParameters.length == 0 || javaType.getBindings().isEmpty()) {
            return null;
        }
        Type genericReturnType = method.getGenericReturnType();
        if (!(genericReturnType instanceof ParameterizedType)) {
            return null;
        }
        ParameterizedType parameterizedType = (ParameterizedType) genericReturnType;
        if (!Objects.equals(javaType.getRawClass(), parameterizedType.getRawType())) {
            return null;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        ArrayList arrayList = new ArrayList(typeParameters.length);
        ArrayList arrayList2 = new ArrayList(typeParameters.length);
        for (int i = 0; i < actualTypeArguments.length; i++) {
            TypeVariable<?> maybeGetTypeVariable = maybeGetTypeVariable(actualTypeArguments[i]);
            if (maybeGetTypeVariable != null) {
                String name = maybeGetTypeVariable.getName();
                if (name == null || (boundType = javaType.getBindings().getBoundType(i)) == null || (findByName = findByName(typeParameters, name)) == null) {
                    return null;
                }
                if (!pessimisticallyValidateBounds(typeResolutionContext, boundType, findByName.getBounds())) {
                    continue;
                } else {
                    int indexOf = arrayList.indexOf(name);
                    if (indexOf != -1) {
                        JavaType javaType2 = (JavaType) arrayList2.get(indexOf);
                        if (!boundType.equals(javaType2)) {
                            boolean isTypeOrSubTypeOf = javaType2.isTypeOrSubTypeOf(boundType.getRawClass());
                            boolean isTypeOrSubTypeOf2 = boundType.isTypeOrSubTypeOf(javaType2.getRawClass());
                            if (!isTypeOrSubTypeOf && !isTypeOrSubTypeOf2) {
                                return null;
                            }
                            if ((isTypeOrSubTypeOf ^ isTypeOrSubTypeOf2) && isTypeOrSubTypeOf2) {
                                arrayList2.set(indexOf, boundType);
                            }
                        } else {
                            continue;
                        }
                    } else {
                        arrayList.add(name);
                        arrayList2.add(boundType);
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return TypeBindings.create(arrayList, arrayList2);
        }
        return null;
    }

    private static TypeVariable<?> findByName(TypeVariable<?>[] typeVariableArr, String str) {
        if (typeVariableArr == null || str == null) {
            return null;
        }
        for (TypeVariable<?> typeVariable : typeVariableArr) {
            if (str.equals(typeVariable.getName())) {
                return typeVariable;
            }
        }
        return null;
    }

    private static ParameterizedType maybeGetParameterizedType(Type type) {
        while (!(type instanceof ParameterizedType)) {
            if (!(type instanceof WildcardType)) {
                return null;
            }
            WildcardType wildcardType = (WildcardType) type;
            if (wildcardType.getLowerBounds().length != 0) {
                return null;
            }
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (upperBounds.length != 1) {
                return null;
            }
            type = upperBounds[0];
        }
        return (ParameterizedType) type;
    }

    private static TypeVariable<?> maybeGetTypeVariable(Type type) {
        while (!(type instanceof TypeVariable)) {
            if (!(type instanceof WildcardType)) {
                return null;
            }
            WildcardType wildcardType = (WildcardType) type;
            if (wildcardType.getLowerBounds().length != 0) {
                return null;
            }
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (upperBounds.length != 1) {
                return null;
            }
            type = upperBounds[0];
        }
        return (TypeVariable) type;
    }

    public static TypeResolutionContext narrowMethodTypeParameters(Method method, JavaType javaType, TypeFactory typeFactory, TypeResolutionContext typeResolutionContext) {
        TypeBindings bindMethodTypeParameters = bindMethodTypeParameters(method, javaType, typeResolutionContext);
        return bindMethodTypeParameters == null ? typeResolutionContext : new TypeResolutionContext.Basic(typeFactory, bindMethodTypeParameters);
    }

    private static boolean pessimisticallyValidateBound(TypeResolutionContext typeResolutionContext, JavaType javaType, Type type) {
        if (!javaType.isTypeOrSubTypeOf(typeResolutionContext.resolveType(type).getRawClass())) {
            return false;
        }
        ParameterizedType maybeGetParameterizedType = maybeGetParameterizedType(type);
        if (maybeGetParameterizedType == null || !Objects.equals(javaType.getRawClass(), maybeGetParameterizedType.getRawType())) {
            return true;
        }
        Type[] actualTypeArguments = maybeGetParameterizedType.getActualTypeArguments();
        TypeBindings bindings = javaType.getBindings();
        if (bindings.size() != actualTypeArguments.length) {
            return false;
        }
        for (int i = 0; i < bindings.size(); i++) {
            if (!pessimisticallyValidateBound(typeResolutionContext, bindings.getBoundType(i), actualTypeArguments[i])) {
                return false;
            }
        }
        return true;
    }

    private static boolean pessimisticallyValidateBounds(TypeResolutionContext typeResolutionContext, JavaType javaType, Type[] typeArr) {
        for (Type type : typeArr) {
            if (!pessimisticallyValidateBound(typeResolutionContext, javaType, type)) {
                return false;
            }
        }
        return true;
    }
}
