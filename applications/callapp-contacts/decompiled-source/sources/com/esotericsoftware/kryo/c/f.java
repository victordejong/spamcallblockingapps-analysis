package com.esotericsoftware.kryo.c;

import com.esotericsoftware.kryo.KryoException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/f.class */
public final class f {
    public static Type a(Class cls, Class cls2, Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof TypeVariable) {
                return a(cls, cls2, type, true);
            }
            if (type instanceof ParameterizedType) {
                return ((ParameterizedType) type).getRawType();
            }
            if (type instanceof GenericArrayType) {
                int i = 1;
                while (true) {
                    type = ((GenericArrayType) type).getGenericComponentType();
                    if (!(type instanceof GenericArrayType)) {
                        break;
                    }
                    i++;
                }
                Type a2 = a(cls, cls2, type);
                return !(a2 instanceof Class) ? type : i == 1 ? Array.newInstance((Class) a2, 0).getClass() : Array.newInstance((Class) a2, new int[i]).getClass();
            } else if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                type = wildcardType.getUpperBounds()[0];
                if (type == Object.class) {
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    if (lowerBounds.length == 0) {
                        return Object.class;
                    }
                    type = lowerBounds[0];
                }
            } else {
                throw new KryoException("Unable to resolve type: ".concat(String.valueOf(type)));
            }
        }
        return type;
    }

    private static Type a(Class cls, Class cls2, Type type, boolean z) {
        Type genericSuperclass = cls2.getGenericSuperclass();
        if (!(genericSuperclass instanceof ParameterizedType)) {
            return type;
        }
        Class superclass = cls2.getSuperclass();
        Type type2 = type;
        if (superclass != cls) {
            Type a2 = a(cls, superclass, type, false);
            type2 = a2;
            if (a2 instanceof Class) {
                return a2;
            }
        }
        String obj = type2.toString();
        TypeVariable[] typeParameters = superclass.getTypeParameters();
        int length = typeParameters.length;
        for (int i = 0; i < length; i++) {
            if (typeParameters[i].getName().equals(obj)) {
                Type type3 = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[i];
                if (type3 instanceof Class) {
                    return type3;
                }
                if (!(type3 instanceof ParameterizedType) && !(type3 instanceof GenericArrayType)) {
                    if (type3 instanceof TypeVariable) {
                        return z ? type2 : type3;
                    }
                }
                return a(cls, cls2, type3);
            }
        }
        return type2;
    }
}
