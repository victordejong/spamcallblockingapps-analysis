package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.p3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/p3.class */
public final class C7824p3 {

    /* renamed from: a */
    public final String f35569a;

    /* renamed from: b */
    public final String f35570b;

    /* renamed from: c */
    public final long f35571c;

    /* renamed from: d */
    public final Bundle f35572d;

    public C7824p3(String str, String str2, Bundle bundle, long j) {
        this.f35569a = str;
        this.f35570b = str2;
        this.f35572d = bundle;
        this.f35571c = j;
    }

    /* renamed from: a */
    public static C7824p3 m6119a(zzas zzasVar) {
        return new C7824p3(zzasVar.f35872d, zzasVar.f35874f, zzasVar.f35873e.m5864p0(), zzasVar.f35875g);
    }

    /* renamed from: b */
    public final zzas m6118b() {
        return new zzas(this.f35569a, new zzaq(new Bundle(this.f35572d)), this.f35570b, this.f35571c);
    }

    public final String toString() {
        String str = this.f35570b;
        String str2 = this.f35569a;
        String valueOf = String.valueOf(this.f35572d);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + valueOf.length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }
}
