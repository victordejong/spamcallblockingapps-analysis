package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoq.class */
public final class zzoq {
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;

    public zzoq(String str, boolean z, boolean z2) {
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != zzoq.class) {
            return false;
        }
        zzoq zzoqVar = (zzoq) obj;
        return TextUtils.equals(this.zza, zzoqVar.zza) && this.zzb == zzoqVar.zzb && this.zzc == zzoqVar.zzc;
    }

    public final int hashCode() {
        int m4793d = C1676a.m4793d(this.zza, 31, 31);
        int i = 1237;
        int i2 = true != this.zzb ? 1237 : 1231;
        if (true == this.zzc) {
            i = 1231;
        }
        return ((m4793d + i2) * 31) + i;
    }
}
