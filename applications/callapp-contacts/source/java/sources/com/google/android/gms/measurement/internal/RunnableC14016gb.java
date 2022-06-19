package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.gb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gb.class */
public final class RunnableC14016gb implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f51672a;

    /* renamed from: b */
    final /* synthetic */ String f51673b;

    /* renamed from: c */
    final /* synthetic */ long f51674c;

    /* renamed from: d */
    final /* synthetic */ Bundle f51675d;

    /* renamed from: e */
    final /* synthetic */ boolean f51676e;

    /* renamed from: f */
    final /* synthetic */ boolean f51677f;

    /* renamed from: g */
    final /* synthetic */ boolean f51678g;

    /* renamed from: h */
    final /* synthetic */ String f51679h;

    /* renamed from: i */
    final /* synthetic */ C14036gv f51680i;

    public RunnableC14016gb(C14036gv c14036gv, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.f51680i = c14036gv;
        this.f51672a = str;
        this.f51673b = str2;
        this.f51674c = j;
        this.f51675d = bundle;
        this.f51676e = z;
        this.f51677f = z2;
        this.f51678g = z3;
        this.f51679h = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51680i.m11858a(this.f51672a, this.f51673b, this.f51674c, this.f51675d, this.f51676e, this.f51677f, this.f51678g, this.f51679h);
    }
}
