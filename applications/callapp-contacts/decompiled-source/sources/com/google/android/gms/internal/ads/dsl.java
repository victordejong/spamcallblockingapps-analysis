package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsl.class */
public final class dsl<T> implements dsb<T>, dsi<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final dsl<Object> f27159a = new dsl<>(null);

    /* renamed from: b  reason: collision with root package name */
    private final T f27160b;

    private dsl(T t) {
        this.f27160b = t;
    }

    public static <T> dsi<T> a(T t) {
        return new dsl(dso.a(t, "instance cannot be null"));
    }

    public static <T> dsi<T> b(T t) {
        return t == null ? f27159a : new dsl(t);
    }

    @Override // com.google.android.gms.internal.ads.dsb, com.google.android.gms.internal.ads.dsv
    public final T a() {
        return this.f27160b;
    }
}
