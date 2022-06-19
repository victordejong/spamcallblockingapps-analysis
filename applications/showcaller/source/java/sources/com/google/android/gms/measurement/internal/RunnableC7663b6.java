package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.b6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/b6.class */
public final class RunnableC7663b6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f35009d;

    /* renamed from: e */
    final /* synthetic */ String f35010e;

    /* renamed from: f */
    final /* synthetic */ long f35011f;

    /* renamed from: g */
    final /* synthetic */ Bundle f35012g;

    /* renamed from: h */
    final /* synthetic */ boolean f35013h;

    /* renamed from: i */
    final /* synthetic */ boolean f35014i;

    /* renamed from: j */
    final /* synthetic */ boolean f35015j;

    /* renamed from: k */
    final /* synthetic */ String f35016k;

    /* renamed from: l */
    final /* synthetic */ C7893v6 f35017l;

    public RunnableC7663b6(C7893v6 c7893v6, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.f35017l = c7893v6;
        this.f35009d = str;
        this.f35010e = str2;
        this.f35011f = j;
        this.f35012g = bundle;
        this.f35013h = z;
        this.f35014i = z2;
        this.f35015j = z3;
        this.f35016k = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35017l.m5915Z(this.f35009d, this.f35010e, this.f35011f, this.f35012g, this.f35013h, this.f35014i, this.f35015j, this.f35016k);
    }
}
