package com.google.gson.p399a;

import com.google.gson.internal.C15977a;
import com.google.gson.internal.C15981b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* renamed from: com.google.gson.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/gson/a/a.class */
public class C15950a<T> {
    final int hashCode;
    final Class<? super T> rawType;
    final Type type;

    public C15950a() {
        Type superclassTypeParameter = getSuperclassTypeParameter(getClass());
        this.type = superclassTypeParameter;
        this.rawType = (Class<? super T>) C15981b.m7940b(superclassTypeParameter);
        this.hashCode = superclassTypeParameter.hashCode();
    }

    C15950a(Type type) {
        Type m7947a = C15981b.m7947a((Type) C15977a.m7955a(type));
        this.type = m7947a;
        this.rawType = (Class<? super T>) C15981b.m7940b(m7947a);
        this.hashCode = m7947a.hashCode();
    }

    public static <T> C15950a<T> get(Class<T> cls) {
        return new C15950a<>(cls);
    }

    public static C15950a<?> get(Type type) {
        return new C15950a<>(type);
    }

    public static C15950a<?> getParameterized(Type type, Type... typeArr) {
        return new C15950a<>(C15981b.m7941a((Type) null, type, typeArr));
    }

    static Type getSuperclassTypeParameter(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return C15981b.m7947a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C15950a) && C15981b.m7942a(this.type, ((C15950a) obj).type);
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
        return C15981b.m7937c(this.type);
    }
}
