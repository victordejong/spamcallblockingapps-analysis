package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzchk.class */
public final class zzchk<T> extends zzchl<T> {
    private final T zza;

    private zzchk(T t) {
        this.zza = t;
    }

    public static <T> zzchk<T> zza(T t) {
        return new zzchk<>(t);
    }

    public final void zzb() {
        zzc(this.zza);
    }
}
