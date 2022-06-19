package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwi.class */
public final class zzwi<T> {
    public final T zza;
    public final zzvl zzb;
    public final zzwl zzc;
    public boolean zzd;

    private zzwi(zzwl zzwlVar) {
        this.zzd = false;
        this.zza = null;
        this.zzb = null;
        this.zzc = zzwlVar;
    }

    private zzwi(T t, zzvl zzvlVar) {
        this.zzd = false;
        this.zza = t;
        this.zzb = zzvlVar;
        this.zzc = null;
    }

    public static <T> zzwi<T> zza(T t, zzvl zzvlVar) {
        return new zzwi<>(t, zzvlVar);
    }

    public static <T> zzwi<T> zzb(zzwl zzwlVar) {
        return new zzwi<>(zzwlVar);
    }

    public final boolean zzc() {
        return this.zzc == null;
    }
}
