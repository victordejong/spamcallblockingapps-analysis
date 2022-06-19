package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzath.class */
final class zzath {
    public final String zza;
    public final boolean zzb;

    public zzath(String str, boolean z) {
        this.zza = str;
        this.zzb = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != zzath.class) {
            return false;
        }
        zzath zzathVar = (zzath) obj;
        return TextUtils.equals(this.zza, zzathVar.zza) && this.zzb == zzathVar.zzb;
    }

    public final int hashCode() {
        String str = this.zza;
        return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (true != this.zzb ? 1237 : 1231);
    }
}
