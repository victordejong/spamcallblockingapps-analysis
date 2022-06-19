package org.xutils.common.util;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/util/ParameterizedTypeUtil.class */
public class ParameterizedTypeUtil {
    private ParameterizedTypeUtil() {
    }

    /* renamed from: a */
    private static Type m250a(Type type, TypeVariable<?>[] typeVariableArr, Type[] typeArr) {
        if (!(type instanceof TypeVariable)) {
            Class<?> cls = type;
            if (type instanceof GenericArrayType) {
                Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
                cls = type;
                if (genericComponentType instanceof Class) {
                    cls = Array.newInstance((Class) genericComponentType, 0).getClass();
                }
            }
            return cls;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        String name = typeVariable.getName();
        if (typeArr != null) {
            for (int i = 0; i < typeVariableArr.length; i++) {
                if (name.equals(typeVariableArr[i].getName())) {
                    return typeArr[i];
                }
            }
        }
        return typeVariable;
    }

    public static Type getParameterizedType(Type type, Class<?> cls, int i) {
        Type[] typeArr;
        Class<?> cls2;
        TypeVariable<Class<?>>[] typeVariableArr;
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            cls2 = (Class) parameterizedType.getRawType();
            typeArr = parameterizedType.getActualTypeArguments();
            typeVariableArr = cls2.getTypeParameters();
        } else {
            cls2 = (Class) type;
            typeVariableArr = null;
            typeArr = null;
        }
        if (cls == cls2) {
            return typeArr != null ? typeArr[i] : Object.class;
        }
        Type[] genericInterfaces = cls2.getGenericInterfaces();
        if (genericInterfaces != null) {
            for (Type type2 : genericInterfaces) {
                if ((type2 instanceof ParameterizedType) && cls.isAssignableFrom((Class) ((ParameterizedType) type2).getRawType())) {
                    try {
                        return m250a(getParameterizedType(type2, cls, i), typeVariableArr, typeArr);
                    } catch (Throwable th) {
                        LogUtil.m252w(th.getMessage(), th);
                    }
                }
            }
        }
        Class<? super Object> superclass = cls2.getSuperclass();
        if (superclass != null && cls.isAssignableFrom(superclass)) {
            return m250a(getParameterizedType(cls2.getGenericSuperclass(), cls, i), typeVariableArr, typeArr);
        }
        throw new IllegalArgumentException("FindGenericType:" + type + ", declaredClass: " + cls + ", index: " + i);
    }
}
