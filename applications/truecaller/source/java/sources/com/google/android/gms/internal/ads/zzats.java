package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzats.class */
public final class zzats {
    private int zza;
    private final zzatk[] zzb;

    public zzats(zzatk[] zzatkVarArr, byte... bArr) {
        this.zzb = zzatkVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzats.class == obj.getClass()) {
            return Arrays.equals(this.zzb, ((zzats) obj).zzb);
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

    public final zzatk zza(int i) {
        return this.zzb[i];
    }

    public final zzatk[] zzb() {
        return (zzatk[]) this.zzb.clone();
    }
}
