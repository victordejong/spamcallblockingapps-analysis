package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzo.class */
public final class zzo {
    public static final zzo zza = new zzo(0, 0, 0);
    public static final zzj<zzo> zzb = zzn.zza;
    public final int zzc = 0;
    public final int zzd;
    public final int zze;

    public zzo(int i, int i2, int i3) {
        this.zzd = i2;
        this.zze = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzoVar = (zzo) obj;
        int i = zzoVar.zzc;
        return this.zzd == zzoVar.zzd && this.zze == zzoVar.zze;
    }

    public final int hashCode() {
        return ((this.zzd + 16337) * 31) + this.zze;
    }
}
