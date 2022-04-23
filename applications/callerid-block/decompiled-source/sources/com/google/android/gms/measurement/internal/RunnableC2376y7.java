package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.y7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/y7.class */
final class RunnableC2376y7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzp f10503b;

    /* renamed from: c */
    final /* synthetic */ boolean f10504c;

    /* renamed from: d */
    final /* synthetic */ zzas f10505d;

    /* renamed from: e */
    final /* synthetic */ k8 f10506e;

    RunnableC2376y7(k8 k8Var, boolean z, zzp zzpVar, boolean z2, zzas zzasVar, String str) {
        this.f10506e = k8Var;
        this.f10503b = zzpVar;
        this.f10504c = z2;
        this.f10505d = zzasVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC2251f3 A = k8.A(this.f10506e);
        if (A == null) {
            ((m5) this.f10506e).a.t().m().m3876a("Discarding data. Failed to send event to service");
            return;
        }
        C1581h.m8347h(this.f10503b);
        this.f10506e.K(A, this.f10504c ? null : this.f10505d, this.f10503b);
        k8.B(this.f10506e);
    }
}
