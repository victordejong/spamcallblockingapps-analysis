package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhw.class */
public final class dhw<T> implements dhn<T>, dht<T> {

    /* renamed from: a */
    private static final dhw<Object> f14386a = new dhw<>(null);

    /* renamed from: b */
    private final T f14387b;

    private dhw(T t) {
        this.f14387b = t;
    }

    /* renamed from: a */
    public static <T> dht<T> m9444a(T t) {
        return new dhw(dhz.m9438a(t, "instance cannot be null"));
    }

    /* renamed from: b */
    public static <T> dht<T> m9443b(T t) {
        return t == null ? f14386a : new dhw<>(t);
    }

    @Override // com.google.android.gms.internal.ads.dhn, com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final T mo9430a() {
        return this.f14387b;
    }
}
