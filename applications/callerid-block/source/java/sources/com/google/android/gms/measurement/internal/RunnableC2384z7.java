package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.z7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/z7.class */
final class RunnableC2384z7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzp f10522b;

    /* renamed from: c */
    final /* synthetic */ boolean f10523c;

    /* renamed from: d */
    final /* synthetic */ zzaa f10524d;

    /* renamed from: e */
    final /* synthetic */ k8 f10525e;

    RunnableC2384z7(k8 k8Var, boolean z, zzp zzpVar, boolean z2, zzaa zzaaVar, zzaa zzaaVar2) {
        this.f10525e = k8Var;
        this.f10522b = zzpVar;
        this.f10523c = z2;
        this.f10524d = zzaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC2251f3 A = k8.A(this.f10525e);
        if (A == null) {
            ((m5) this.f10525e).a.t().m().m3876a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        C1581h.m8347h(this.f10522b);
        this.f10525e.K(A, this.f10523c ? null : this.f10524d, this.f10522b);
        k8.B(this.f10525e);
    }
}
