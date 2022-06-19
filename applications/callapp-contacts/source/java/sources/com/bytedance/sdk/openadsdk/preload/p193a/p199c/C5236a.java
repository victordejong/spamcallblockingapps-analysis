package com.bytedance.sdk.openadsdk.preload.p193a.p199c;

import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5118a;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5189b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.c.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/c/a.class */
public class C5236a<T> {

    /* renamed from: b */
    final Class<? super T> f18608b;

    /* renamed from: c */
    final Type f18609c;

    /* renamed from: d */
    final int f18610d;

    public C5236a() {
        Type m32807a = m32807a(getClass());
        this.f18609c = m32807a;
        this.f18608b = (Class<? super T>) C5189b.m32865e(m32807a);
        this.f18610d = m32807a.hashCode();
    }

    C5236a(Type type) {
        Type m32866d = C5189b.m32866d((Type) C5118a.m32987a(type));
        this.f18609c = m32866d;
        this.f18608b = (Class<? super T>) C5189b.m32865e(m32866d);
        this.f18610d = m32866d.hashCode();
    }

    /* renamed from: a */
    public static C5236a<?> m32806a(Type type) {
        return new C5236a<>(type);
    }

    /* renamed from: a */
    static Type m32807a(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return C5189b.m32866d(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    /* renamed from: b */
    public static <T> C5236a<T> m32804b(Class<T> cls) {
        return new C5236a<>(cls);
    }

    /* renamed from: a */
    public final Class<? super T> m32808a() {
        return this.f18608b;
    }

    /* renamed from: b */
    public final Type m32805b() {
        return this.f18609c;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C5236a) && C5189b.m32874a(this.f18609c, ((C5236a) obj).f18609c);
    }

    public final int hashCode() {
        return this.f18610d;
    }

    public final String toString() {
        return C5189b.m32864f(this.f18609c);
    }
}
