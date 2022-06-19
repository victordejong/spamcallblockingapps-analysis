package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzq.class */
public final class zzq {
    public static final zzadw<zzq> zzb = zzp.zza;
    public final int zza = 1;
    private final zzafv[] zzc;
    private int zzd;

    public zzq(zzafv... zzafvVarArr) {
        this.zzc = zzafvVarArr;
        zzc(zzafvVarArr[0].zzc);
        int i = zzafvVarArr[0].zze;
    }

    private static String zzc(String str) {
        return (str == null || str.equals("und")) ? "" : str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && zzq.class == obj.getClass() && Arrays.equals(this.zzc, ((zzq) obj).zzc);
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

    public final zzafv zza(int i) {
        return this.zzc[i];
    }

    public final int zzb(zzafv zzafvVar) {
        for (int i = 0; i <= 0; i++) {
            if (zzafvVar == this.zzc[i]) {
                return i;
            }
        }
        return -1;
    }
}
