package com.esotericsoftware.kryo.p278c;

import com.esotericsoftware.kryo.KryoException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
/* renamed from: com.esotericsoftware.kryo.c.f */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/f.class */
public final class C9391f {
    /* renamed from: a */
    public static Type m24339a(Class cls, Class cls2, Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof TypeVariable) {
                return m24338a(cls, cls2, type, true);
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
                Type m24339a = m24339a(cls, cls2, type);
                return !(m24339a instanceof Class) ? type : i == 1 ? Array.newInstance((Class) m24339a, 0).getClass() : Array.newInstance((Class) m24339a, new int[i]).getClass();
            } else if (!(type instanceof WildcardType)) {
                throw new KryoException("Unable to resolve type: ".concat(String.valueOf(type)));
            } else {
                WildcardType wildcardType = (WildcardType) type;
                type = wildcardType.getUpperBounds()[0];
                if (type == Object.class) {
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    if (lowerBounds.length == 0) {
                        return Object.class;
                    }
                    type = lowerBounds[0];
                }
            }
        }
        return type;
    }

    /* renamed from: a */
    private static Type m24338a(Class cls, Class cls2, Type type, boolean z) {
        Type genericSuperclass = cls2.getGenericSuperclass();
        if (!(genericSuperclass instanceof ParameterizedType)) {
            return type;
        }
        Class superclass = cls2.getSuperclass();
        Type type2 = type;
        if (superclass != cls) {
            Type m24338a = m24338a(cls, superclass, type, false);
            type2 = m24338a;
            if (m24338a instanceof Class) {
                return m24338a;
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
                return m24339a(cls, cls2, type3);
            }
        }
        return type2;
    }
}
