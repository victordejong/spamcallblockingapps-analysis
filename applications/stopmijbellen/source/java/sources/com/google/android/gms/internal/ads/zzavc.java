package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavc.class */
public final class zzavc {
    public final int zza = 1;
    private final zzapg[] zzb;
    private int zzc;

    public zzavc(zzapg... zzapgVarArr) {
        this.zzb = zzapgVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && zzavc.class == obj.getClass() && Arrays.equals(this.zzb, ((zzavc) obj).zzb);
    }

    public final int hashCode() {
        int i = this.zzc;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.zzb) + 527;
            this.zzc = i2;
        }
        return i2;
    }

    public final int zza(zzapg zzapgVar) {
        for (int i = 0; i <= 0; i++) {
            if (zzapgVar == this.zzb[i]) {
                return i;
            }
        }
        return -1;
    }

    public final zzapg zzb(int i) {
        return this.zzb[i];
    }
}
