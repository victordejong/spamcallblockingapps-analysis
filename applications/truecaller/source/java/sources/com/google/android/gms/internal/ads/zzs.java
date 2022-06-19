package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzs.class */
public final class zzs {
    public static final zzs zza = new zzs(new zzq[0]);
    public static final zzadw<zzs> zzc = zzr.zza;
    public final int zzb;
    private final zzq[] zzd;
    private int zze;

    public zzs(zzq... zzqVarArr) {
        this.zzd = zzqVarArr;
        this.zzb = zzqVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzs.class != obj.getClass()) {
            return false;
        }
        zzs zzsVar = (zzs) obj;
        return this.zzb == zzsVar.zzb && Arrays.equals(this.zzd, zzsVar.zzd);
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

    public final zzq zza(int i) {
        return this.zzd[i];
    }

    public final int zzb(zzq zzqVar) {
        for (int i = 0; i < this.zzb; i++) {
            if (this.zzd[i] == zzqVar) {
                return i;
            }
        }
        return -1;
    }
}
