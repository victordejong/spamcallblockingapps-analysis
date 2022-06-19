package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.b5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/b5.class */
final class RunnableC2227b5 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzp f9992b;

    /* renamed from: c */
    final /* synthetic */ l5 f9993c;

    RunnableC2227b5(l5 l5Var, zzp zzpVar) {
        this.f9993c = l5Var;
        this.f9992b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l5.w4(this.f9993c).k();
        o9 w4 = l5.w4(this.f9993c);
        zzp zzpVar = this.f9992b;
        w4.c().f();
        w4.c0();
        C1581h.m8351d(zzpVar.b);
        w4.z(zzpVar);
    }
}
