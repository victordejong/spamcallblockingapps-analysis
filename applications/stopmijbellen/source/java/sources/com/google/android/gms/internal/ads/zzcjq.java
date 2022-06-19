package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjq.class */
public final class zzcjq<T> extends zzcjr<T> {
    private final T zza;

    private zzcjq(T t) {
        this.zza = t;
    }

    public static <T> zzcjq<T> zza(T t) {
        return new zzcjq<>(t);
    }

    public final void zzb() {
        zzd(this.zza);
    }
}
