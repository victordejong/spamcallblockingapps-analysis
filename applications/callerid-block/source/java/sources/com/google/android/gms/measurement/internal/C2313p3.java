package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.p3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/p3.class */
public final class C2313p3 {

    /* renamed from: a */
    public final String f10348a;

    /* renamed from: b */
    public final String f10349b;

    /* renamed from: c */
    public final long f10350c;

    /* renamed from: d */
    public final Bundle f10351d;

    public C2313p3(String str, String str2, Bundle bundle, long j) {
        this.f10348a = str;
        this.f10349b = str2;
        this.f10351d = bundle;
        this.f10350c = j;
    }

    /* renamed from: a */
    public static C2313p3 m3856a(zzas zzasVar) {
        return new C2313p3(zzasVar.b, zzasVar.d, zzasVar.c.F(), zzasVar.e);
    }

    /* renamed from: b */
    public final zzas m3855b() {
        return new zzas(this.f10348a, new zzaq(new Bundle(this.f10351d)), this.f10349b, this.f10350c);
    }

    public final String toString() {
        String str = this.f10349b;
        String str2 = this.f10348a;
        String valueOf = String.valueOf(this.f10351d);
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
