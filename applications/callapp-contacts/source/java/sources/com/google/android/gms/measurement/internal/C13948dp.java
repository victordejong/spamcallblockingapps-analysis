package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.dp */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dp.class */
public final class C13948dp {

    /* renamed from: a */
    public final String f51405a;

    /* renamed from: b */
    public final String f51406b;

    /* renamed from: c */
    public final long f51407c;

    /* renamed from: d */
    public final Bundle f51408d;

    public C13948dp(String str, String str2, Bundle bundle, long j) {
        this.f51405a = str;
        this.f51406b = str2;
        this.f51408d = bundle;
        this.f51407c = j;
    }

    /* renamed from: a */
    public static C13948dp m12082a(zzas zzasVar) {
        return new C13948dp(zzasVar.zza, zzasVar.zzc, zzasVar.zzb.zzf(), zzasVar.zzd);
    }

    /* renamed from: a */
    public final zzas m12083a() {
        return new zzas(this.f51405a, new zzaq(new Bundle(this.f51408d)), this.f51406b, this.f51407c);
    }

    public final String toString() {
        String str = this.f51406b;
        String str2 = this.f51405a;
        String valueOf = String.valueOf(this.f51408d);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }
}
