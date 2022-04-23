package com.bytedance.sdk.openadsdk.preload.a.c;

import com.bytedance.sdk.openadsdk.preload.a.b.b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/c/a.class */
public class a<T> {

    /* renamed from: b  reason: collision with root package name */
    final Class<? super T> f10056b;

    /* renamed from: c  reason: collision with root package name */
    final Type f10057c;

    /* renamed from: d  reason: collision with root package name */
    final int f10058d;

    public a() {
        Type a2 = a(getClass());
        this.f10057c = a2;
        this.f10056b = (Class<? super T>) b.e(a2);
        this.f10058d = a2.hashCode();
    }

    a(Type type) {
        Type d2 = b.d((Type) com.bytedance.sdk.openadsdk.preload.a.b.a.a(type));
        this.f10057c = d2;
        this.f10056b = (Class<? super T>) b.e(d2);
        this.f10058d = d2.hashCode();
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    static Type a(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return b.d(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    public static <T> a<T> b(Class<T> cls) {
        return new a<>(cls);
    }

    public final Class<? super T> a() {
        return this.f10056b;
    }

    public final Type b() {
        return this.f10057c;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && b.a(this.f10057c, ((a) obj).f10057c);
    }

    public final int hashCode() {
        return this.f10058d;
    }

    public final String toString() {
        return b.f(this.f10057c);
    }
}
