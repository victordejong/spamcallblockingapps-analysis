package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.n7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/n7.class */
final class RunnableC2303n7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzp f10314b;

    /* renamed from: c */
    final /* synthetic */ k8 f10315c;

    RunnableC2303n7(k8 k8Var, zzp zzpVar) {
        this.f10315c = k8Var;
        this.f10314b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC2251f3 A = k8.A(this.f10315c);
        if (A == null) {
            ((m5) this.f10315c).a.t().m().m3876a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            C1581h.m8347h(this.f10314b);
            A.m3920D5(this.f10314b);
        } catch (RemoteException e) {
            ((m5) this.f10315c).a.t().m().m3875b("Failed to reset data on the service: remote exception", e);
        }
        k8.B(this.f10315c);
    }
}
