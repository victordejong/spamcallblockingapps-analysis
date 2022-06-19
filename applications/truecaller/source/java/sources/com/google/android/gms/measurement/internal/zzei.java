package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzei.class */
public final class zzei {

    /* renamed from: a */
    public final String f6366a;

    /* renamed from: b */
    public final String f6367b;

    /* renamed from: c */
    public final long f6368c;

    /* renamed from: d */
    public final Bundle f6369d;

    public zzei(String str, String str2, Bundle bundle, long j) {
        this.f6366a = str;
        this.f6367b = str2;
        this.f6369d = bundle;
        this.f6368c = j;
    }

    /* renamed from: b */
    public static zzei m38585b(zzau zzauVar) {
        return new zzei(zzauVar.a, zzauVar.c, zzauVar.b.o2(), zzauVar.d);
    }

    /* renamed from: a */
    public final zzau m38586a() {
        return new zzau(this.f6366a, new zzas(new Bundle(this.f6369d)), this.f6367b, this.f6368c);
    }

    public final String toString() {
        String str = this.f6367b;
        String str2 = this.f6366a;
        String obj = this.f6369d.toString();
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(obj.length() + length + 21 + String.valueOf(str2).length());
        C22128a.m8666T0(sb, "origin=", str, ",name=", str2);
        return C22128a.m8618h(sb, ",params=", obj);
    }
}
