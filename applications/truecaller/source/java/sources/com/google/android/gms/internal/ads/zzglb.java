package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzglb.class */
public final class zzglb<T> implements zzgla, zzgku {
    private static final zzglb<Object> zza = new zzglb<>(null);
    private final T zzb;

    private zzglb(T t) {
        this.zzb = t;
    }

    public static <T> zzgla<T> zza(T t) {
        zzgli.zza(t, "instance cannot be null");
        return new zzglb(t);
    }

    public static <T> zzgla<T> zzc(T t) {
        return t == null ? zza : new zzglb<>(t);
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final T zzb() {
        return this.zzb;
    }
}
