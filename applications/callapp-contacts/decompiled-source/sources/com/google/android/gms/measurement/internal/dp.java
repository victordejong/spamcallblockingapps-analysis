package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dp.class */
public final class dp {

    /* renamed from: a  reason: collision with root package name */
    public final String f29508a;

    /* renamed from: b  reason: collision with root package name */
    public final String f29509b;

    /* renamed from: c  reason: collision with root package name */
    public final long f29510c;

    /* renamed from: d  reason: collision with root package name */
    public final Bundle f29511d;

    public dp(String str, String str2, Bundle bundle, long j) {
        this.f29508a = str;
        this.f29509b = str2;
        this.f29511d = bundle;
        this.f29510c = j;
    }

    public static dp a(zzas zzasVar) {
        return new dp(zzasVar.zza, zzasVar.zzc, zzasVar.zzb.zzf(), zzasVar.zzd);
    }

    public final zzas a() {
        return new zzas(this.f29508a, new zzaq(new Bundle(this.f29511d)), this.f29509b, this.f29510c);
    }

    public final String toString() {
        String str = this.f29509b;
        String str2 = this.f29508a;
        String valueOf = String.valueOf(this.f29511d);
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
