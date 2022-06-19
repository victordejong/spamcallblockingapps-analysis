package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatg.class */
public final class zzatg {
    public static final zzatg zza = new zzatg(new zzatf[0]);
    public final int zzb;
    private final zzatf[] zzc;
    private int zzd;

    public zzatg(zzatf... zzatfVarArr) {
        this.zzc = zzatfVarArr;
        this.zzb = zzatfVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzatg.class != obj.getClass()) {
            return false;
        }
        zzatg zzatgVar = (zzatg) obj;
        return this.zzb == zzatgVar.zzb && Arrays.equals(this.zzc, zzatgVar.zzc);
    }

    public final int hashCode() {
        int i = this.zzd;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.zzc);
            this.zzd = i2;
        }
        return i2;
    }

    public final zzatf zza(int i) {
        return this.zzc[i];
    }

    public final int zzb(zzatf zzatfVar) {
        for (int i = 0; i < this.zzb; i++) {
            if (this.zzc[i] == zzatfVar) {
                return i;
            }
        }
        return -1;
    }
}
