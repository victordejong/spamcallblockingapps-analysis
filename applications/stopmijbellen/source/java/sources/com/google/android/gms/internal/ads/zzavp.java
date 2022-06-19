package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavp.class */
public final class zzavp {
    private int zza;
    private final zzavh[] zzb;

    public zzavp(zzavh[] zzavhVarArr, byte... bArr) {
        this.zzb = zzavhVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzavp.class == obj.getClass()) {
            return Arrays.equals(this.zzb, ((zzavp) obj).zzb);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zza;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.zzb) + 527;
            this.zza = i2;
        }
        return i2;
    }

    public final zzavh zza(int i) {
        return this.zzb[i];
    }

    public final zzavh[] zzb() {
        return (zzavh[]) this.zzb.clone();
    }
}
