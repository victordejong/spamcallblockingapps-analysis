package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzej.class */
public final class zzej {
    public final String zza;
    public final String zzb;
    public final long zzc;
    public final Bundle zzd;

    public zzej(String str, String str2, Bundle bundle, long j) {
        this.zza = str;
        this.zzb = str2;
        this.zzd = bundle;
        this.zzc = j;
    }

    public static zzej zza(zzas zzasVar) {
        return new zzej(zzasVar.zza, zzasVar.zzc, zzasVar.zzb.zzf(), zzasVar.zzd);
    }

    public final String toString() {
        String str = this.zzb;
        String str2 = this.zza;
        String valueOf = String.valueOf(this.zzd);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }

    public final zzas zzb() {
        return new zzas(this.zza, new zzaq(new Bundle(this.zzd)), this.zzb, this.zzc);
    }
}
