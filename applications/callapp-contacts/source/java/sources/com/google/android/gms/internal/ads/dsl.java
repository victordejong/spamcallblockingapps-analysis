package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsl.class */
public final class dsl<T> implements dsb<T>, dsi<T> {

    /* renamed from: a */
    private static final dsl<Object> f47515a = new dsl<>(null);

    /* renamed from: b */
    private final T f47516b;

    private dsl(T t) {
        this.f47516b = t;
    }

    /* renamed from: a */
    public static <T> dsi<T> m15771a(T t) {
        return new dsl(dso.m15765a(t, "instance cannot be null"));
    }

    /* renamed from: b */
    public static <T> dsi<T> m15770b(T t) {
        return t == null ? f47515a : new dsl(t);
    }

    @Override // com.google.android.gms.internal.ads.dsb, com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final T mo14005a() {
        return this.f47516b;
    }
}
