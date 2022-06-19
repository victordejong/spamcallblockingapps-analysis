package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dj3.class */
public final class dj3<T> implements cj3, vi3 {

    /* renamed from: a */
    private static final dj3<Object> f21652a = new dj3<>(null);

    /* renamed from: b */
    private final T f21653b;

    private dj3(T t) {
        this.f21653b = t;
    }

    /* renamed from: a */
    public static <T> cj3<T> m15781a(T t) {
        kj3.m13880a(t, "instance cannot be null");
        return new dj3(t);
    }

    /* renamed from: c */
    public static <T> cj3<T> m15780c(T t) {
        return t == null ? f21652a : new dj3<>(t);
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final T mo8141b() {
        return this.f21653b;
    }
}
