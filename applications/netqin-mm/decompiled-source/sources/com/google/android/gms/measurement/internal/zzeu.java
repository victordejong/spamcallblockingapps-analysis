package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeu.class */
public final class zzeu {

    /* renamed from: a */
    public String f29949a;

    /* renamed from: b */
    public String f29950b;

    /* renamed from: c */
    public long f29951c;

    /* renamed from: d */
    public Bundle f29952d;

    public zzeu(String str, String str2, Bundle bundle, long j) {
        this.f29949a = str;
        this.f29950b = str2;
        this.f29952d = bundle == null ? new Bundle() : bundle;
        this.f29951c = j;
    }

    /* renamed from: a */
    public static zzeu m9138a(zzaq zzaqVar) {
        return new zzeu(zzaqVar.f29812a, zzaqVar.f29814c, zzaqVar.f29813b.zzb(), zzaqVar.f29815d);
    }

    /* renamed from: a */
    public final zzaq m9139a() {
        return new zzaq(this.f29949a, new zzap(new Bundle(this.f29952d)), this.f29950b, this.f29951c);
    }

    public final String toString() {
        String str = this.f29950b;
        String str2 = this.f29949a;
        String valueOf = String.valueOf(this.f29952d);
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
