package com.google.gson.a;

import com.google.gson.internal.b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* loaded from: classes4-dex2jar.jar:com/google/gson/a/a.class */
public class a<T> {
    final int hashCode;
    final Class<? super T> rawType;
    final Type type;

    public a() {
        Type superclassTypeParameter = getSuperclassTypeParameter(getClass());
        this.type = superclassTypeParameter;
        this.rawType = (Class<? super T>) b.b(superclassTypeParameter);
        this.hashCode = superclassTypeParameter.hashCode();
    }

    a(Type type) {
        Type a2 = b.a((Type) com.google.gson.internal.a.a(type));
        this.type = a2;
        this.rawType = (Class<? super T>) b.b(a2);
        this.hashCode = a2.hashCode();
    }

    public static <T> a<T> get(Class<T> cls) {
        return new a<>(cls);
    }

    public static a<?> get(Type type) {
        return new a<>(type);
    }

    public static a<?> getParameterized(Type type, Type... typeArr) {
        return new a<>(b.a((Type) null, type, typeArr));
    }

    static Type getSuperclassTypeParameter(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return b.a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && b.a(this.type, ((a) obj).type);
    }

    public final Class<? super T> getRawType() {
        return this.rawType;
    }

    public final Type getType() {
        return this.type;
    }

    public final int hashCode() {
        return this.hashCode;
    }

    public final String toString() {
        return b.c(this.type);
    }
}
