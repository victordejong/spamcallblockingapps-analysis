package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavd.class */
public final class zzavd {
    public static final zzavd zza = new zzavd(new zzavc[0]);
    public final int zzb;
    private final zzavc[] zzc;
    private int zzd;

    public zzavd(zzavc... zzavcVarArr) {
        this.zzc = zzavcVarArr;
        this.zzb = zzavcVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzavd.class != obj.getClass()) {
            return false;
        }
        zzavd zzavdVar = (zzavd) obj;
        return this.zzb == zzavdVar.zzb && Arrays.equals(this.zzc, zzavdVar.zzc);
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

    public final int zza(zzavc zzavcVar) {
        for (int i = 0; i < this.zzb; i++) {
            if (this.zzc[i] == zzavcVar) {
                return i;
            }
        }
        return -1;
    }

    public final zzavc zzb(int i) {
        return this.zzc[i];
    }
}
