package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzt.class */
public final class zzt {
    private int zza;
    private final zzjg[] zzb;

    public zzt(zzjg[] zzjgVarArr, byte... bArr) {
        this.zzb = zzjgVarArr;
        int length = zzjgVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzt.class == obj.getClass()) {
            return Arrays.equals(this.zzb, ((zzt) obj).zzb);
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
