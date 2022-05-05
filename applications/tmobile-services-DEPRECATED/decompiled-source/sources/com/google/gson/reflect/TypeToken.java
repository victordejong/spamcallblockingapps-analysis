package com.google.gson.reflect;

import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.C$Gson$Types;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/google/gson/reflect/TypeToken.class */
public class TypeToken<T> {

    /* renamed from: a */
    final Class<? super T> f12194a;

    /* renamed from: b */
    final Type f12195b;

    /* renamed from: c */
    final int f12196c;

    protected TypeToken() {
        Type d = m8159d(TypeToken.class);
        this.f12195b = d;
        this.f12194a = (Class<? super T>) C$Gson$Types.m8355k(d);
        this.f12196c = this.f12195b.hashCode();
    }

    TypeToken(Type type) {
        C$Gson$Preconditions.m8366b(type);
        Type b = C$Gson$Types.m8364b(type);
        this.f12195b = b;
        this.f12194a = (Class<? super T>) C$Gson$Types.m8355k(b);
        this.f12196c = this.f12195b.hashCode();
    }

    /* renamed from: a */
    public static <T> TypeToken<T> m8162a(Class<T> cls) {
        return new TypeToken<>(cls);
    }

    /* renamed from: b */
    public static TypeToken<?> m8161b(Type type) {
        return new TypeToken<>(type);
    }

    /* renamed from: d */
    static Type m8159d(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return C$Gson$Types.m8364b(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    /* renamed from: c */
    public final Class<? super T> m8160c() {
        return this.f12194a;
    }

    /* renamed from: e */
    public final Type m8158e() {
        return this.f12195b;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof TypeToken) && C$Gson$Types.m8360f(this.f12195b, ((TypeToken) obj).f12195b);
    }

    public final int hashCode() {
        return this.f12196c;
    }

    public final String toString() {
        return C$Gson$Types.m8345u(this.f12195b);
    }
}
