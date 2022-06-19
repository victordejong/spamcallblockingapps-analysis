package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcm.class */
public final class zzcm {
    public static final zzcm zza = new zzcm(zzftc.zzl());
    public static final zzj<zzcm> zzb = zzcl.zza;
    public final zzftc<Integer> zzc;

    public zzcm(zzftc<Integer> zzftcVar) {
        this.zzc = zzftcVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzcm.class == obj.getClass()) {
            return this.zzc.equals(((zzcm) obj).zzc);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzc.hashCode();
    }
}
