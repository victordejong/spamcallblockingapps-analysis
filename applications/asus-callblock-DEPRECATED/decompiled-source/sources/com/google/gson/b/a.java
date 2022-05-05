package com.google.gson.b;

import com.google.gson.a.b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/google/gson/b/a.class */
public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    public final Class<? super T> f4531a;

    /* renamed from: b  reason: collision with root package name */
    public final Type f4532b;
    final int c;

    protected a() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        this.f4532b = b.a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        this.f4531a = (Class<? super T>) b.b(this.f4532b);
        this.c = this.f4532b.hashCode();
    }

    private a(Type type) {
        this.f4532b = b.a((Type) com.google.gson.a.a.a(type));
        this.f4531a = (Class<? super T>) b.b(this.f4532b);
        this.c = this.f4532b.hashCode();
    }

    public static <T> a<T> a(Class<T> cls) {
        return new a<>(cls);
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && b.a(this.f4532b, ((a) obj).f4532b);
    }

    public final int hashCode() {
        return this.c;
    }

    public final String toString() {
        return b.c(this.f4532b);
    }
}
