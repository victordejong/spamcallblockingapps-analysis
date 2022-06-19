package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzci.class */
public final class zzci {
    private int zza;
    private final zzsb[] zzb;

    public zzci(zzsb[] zzsbVarArr, byte... bArr) {
        this.zzb = zzsbVarArr;
        int length = zzsbVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzci.class == obj.getClass()) {
            return Arrays.equals(this.zzb, ((zzci) obj).zzb);
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
}
