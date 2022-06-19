package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbr.class */
public final class zzbr {
    public static final zzbr zza = new zzbp().zze();
    public static final zzj<zzbr> zzb = zzbo.zza;
    private final zzw zzc;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzbr) {
            return this.zzc.equals(((zzbr) obj).zzc);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzc.hashCode();
    }
}
