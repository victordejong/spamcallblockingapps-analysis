package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcf.class */
public final class zzcf {
    public static final zzj<zzcf> zza = zzce.zza;
    public final int zzb = 1;
    private final zzab[] zzc;
    private int zzd;

    public zzcf(zzab... zzabVarArr) {
        this.zzc = zzabVarArr;
        zzc(zzabVarArr[0].zzd);
        int i = zzabVarArr[0].zzf;
    }

    private static String zzc(String str) {
        return (str == null || str.equals("und")) ? "" : str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && zzcf.class == obj.getClass() && Arrays.equals(this.zzc, ((zzcf) obj).zzc);
    }

    public final int hashCode() {
        int i = this.zzd;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.zzc) + 527;
            this.zzd = i2;
        }
        return i2;
    }

    public final int zza(zzab zzabVar) {
        for (int i = 0; i <= 0; i++) {
            if (zzabVar == this.zzc[i]) {
                return i;
            }
        }
        return -1;
    }

    public final zzab zzb(int i) {
        return this.zzc[i];
    }
}
