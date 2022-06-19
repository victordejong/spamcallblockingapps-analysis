package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzch.class */
public final class zzch {
    public static final zzch zza = new zzch(new zzcf[0]);
    public static final zzj<zzch> zzb = zzcg.zza;
    public final int zzc;
    private final zzcf[] zzd;
    private int zze;

    public zzch(zzcf... zzcfVarArr) {
        this.zzd = zzcfVarArr;
        this.zzc = zzcfVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzch.class != obj.getClass()) {
            return false;
        }
        zzch zzchVar = (zzch) obj;
        return this.zzc == zzchVar.zzc && Arrays.equals(this.zzd, zzchVar.zzd);
    }

    public final int hashCode() {
        int i = this.zze;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.zzd);
            this.zze = i2;
        }
        return i2;
    }

    public final int zza(zzcf zzcfVar) {
        for (int i = 0; i < this.zzc; i++) {
            if (this.zzd[i] == zzcfVar) {
                return i;
            }
        }
        return -1;
    }

    public final zzcf zzb(int i) {
        return this.zzd[i];
    }
}
