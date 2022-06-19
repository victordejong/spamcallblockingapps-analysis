package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgps.class */
public final class zzgps<T> implements zzgpr, zzgpl {
    private static final zzgps<Object> zza = new zzgps<>(null);
    private final T zzb;

    private zzgps(T t) {
        this.zzb = t;
    }

    public static <T> zzgpr<T> zza(T t) {
        zzgpz.zza(t, "instance cannot be null");
        return new zzgps(t);
    }

    public static <T> zzgpr<T> zzc(T t) {
        return t == null ? zza : new zzgps<>(t);
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final T zzb() {
        return this.zzb;
    }
}
