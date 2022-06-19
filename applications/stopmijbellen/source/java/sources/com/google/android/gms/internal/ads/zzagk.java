package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagk.class */
public final class zzagk {
    private final String zza;
    private final String zzb;

    public zzagk(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzagk.class != obj.getClass()) {
            return false;
        }
        zzagk zzagkVar = (zzagk) obj;
        return TextUtils.equals(this.zza, zzagkVar.zza) && TextUtils.equals(this.zzb, zzagkVar.zzb);
    }

    public final int hashCode() {
        return this.zzb.hashCode() + (this.zza.hashCode() * 31);
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length());
        C0082b.m8749m(sb, "Header[name=", str, ",value=", str2);
        sb.append("]");
        return sb.toString();
    }

    public final String zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }
}
