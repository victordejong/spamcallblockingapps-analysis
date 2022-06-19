package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.b6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/b6.class */
final class RunnableC2228b6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f9994b;

    /* renamed from: c */
    final /* synthetic */ String f9995c;

    /* renamed from: d */
    final /* synthetic */ long f9996d;

    /* renamed from: e */
    final /* synthetic */ Bundle f9997e;

    /* renamed from: f */
    final /* synthetic */ boolean f9998f;

    /* renamed from: g */
    final /* synthetic */ boolean f9999g;

    /* renamed from: h */
    final /* synthetic */ boolean f10000h;

    /* renamed from: i */
    final /* synthetic */ String f10001i;

    /* renamed from: j */
    final /* synthetic */ v6 f10002j;

    RunnableC2228b6(v6 v6Var, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.f10002j = v6Var;
        this.f9994b = str;
        this.f9995c = str2;
        this.f9996d = j;
        this.f9997e = bundle;
        this.f9998f = z;
        this.f9999g = z2;
        this.f10000h = z3;
        this.f10001i = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10002j.Z(this.f9994b, this.f9995c, this.f9996d, this.f9997e, this.f9998f, this.f9999g, this.f10000h, this.f10001i);
    }
}
