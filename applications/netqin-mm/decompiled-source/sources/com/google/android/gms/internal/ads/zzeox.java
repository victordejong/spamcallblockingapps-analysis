package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeox.class */
public final class zzeox<T> implements zzeos<T>, zzeoy<T> {

    /* renamed from: b */
    public static final zzeox<Object> f28142b = new zzeox<>(null);

    /* renamed from: a */
    public final T f28143a;

    public zzeox(T t) {
        this.f28143a = t;
    }

    /* renamed from: a */
    public static <T> zzeoy<T> m12195a(T t) {
        zzepe.m12187a(t, "instance cannot be null");
        return new zzeox(t);
    }

    /* renamed from: b */
    public static <T> zzeoy<T> m12194b(T t) {
        return t == null ? f28142b : new zzeox(t);
    }

    @Override // com.google.android.gms.internal.ads.zzeos, com.google.android.gms.internal.ads.zzeph
    public final T get() {
        return this.f28143a;
    }
}
