package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatf.class */
public final class zzatf {
    public final int zza = 1;
    private final zzanm[] zzb;
    private int zzc;

    public zzatf(zzanm... zzanmVarArr) {
        this.zzb = zzanmVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && zzatf.class == obj.getClass() && Arrays.equals(this.zzb, ((zzatf) obj).zzb);
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

    public final zzanm zza(int i) {
        return this.zzb[i];
    }

    public final int zzb(zzanm zzanmVar) {
        for (int i = 0; i <= 0; i++) {
            if (zzanmVar == this.zzb[i]) {
                return i;
            }
        }
        return -1;
    }
}
