package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfx.class */
public final class zzfx {
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;

    public zzfx(String str, boolean z, boolean z2) {
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != zzfx.class) {
            return false;
        }
        zzfx zzfxVar = (zzfx) obj;
        return TextUtils.equals(this.zza, zzfxVar.zza) && this.zzb == zzfxVar.zzb && this.zzc == zzfxVar.zzc;
    }

    public final int hashCode() {
        int m8579q2 = C22128a.m8579q2(this.zza, 31, 31);
        int i = 1237;
        int i2 = true != this.zzb ? 1237 : 1231;
        if (true == this.zzc) {
            i = 1231;
        }
        return ((m8579q2 + i2) * 31) + i;
    }
}
