package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.m7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/m7.class */
final class RunnableC2297m7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzp f10293b;

    /* renamed from: c */
    final /* synthetic */ boolean f10294c;

    /* renamed from: d */
    final /* synthetic */ zzkl f10295d;

    /* renamed from: e */
    final /* synthetic */ k8 f10296e;

    RunnableC2297m7(k8 k8Var, zzp zzpVar, boolean z, zzkl zzklVar) {
        this.f10296e = k8Var;
        this.f10293b = zzpVar;
        this.f10294c = z;
        this.f10295d = zzklVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC2251f3 A = k8.A(this.f10296e);
        if (A == null) {
            ((m5) this.f10296e).a.t().m().m3876a("Discarding data. Failed to set user property");
            return;
        }
        C1581h.m8347h(this.f10293b);
        this.f10296e.K(A, this.f10294c ? null : this.f10295d, this.f10293b);
        k8.B(this.f10296e);
    }
}
