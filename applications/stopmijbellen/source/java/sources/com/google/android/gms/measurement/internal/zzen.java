package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzen.class */
public final class zzen {
    public final String zza;
    public final String zzb;
    public final long zzc;
    public final Bundle zzd;

    public zzen(String str, String str2, Bundle bundle, long j) {
        this.zza = str;
        this.zzb = str2;
        this.zzd = bundle;
        this.zzc = j;
    }

    public static zzen zza(zzas zzasVar) {
        return new zzen(zzasVar.zza, zzasVar.zzc, zzasVar.zzb.zzf(), zzasVar.zzd);
    }

    public final String toString() {
        String str = this.zzb;
        String str2 = this.zza;
        String valueOf = String.valueOf(this.zzd);
        StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(str).length(), 21, String.valueOf(str2).length(), valueOf.length()));
        C0082b.m8749m(sb, "origin=", str, ",name=", str2);
        return C0082b.m8754h(sb, ",params=", valueOf);
    }

    public final zzas zzb() {
        return new zzas(this.zza, new zzaq(new Bundle(this.zzd)), this.zzb, this.zzc);
    }
}
