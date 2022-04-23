package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.x7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/x7.class */
final class RunnableC2367x7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzp f10475b;

    /* renamed from: c */
    final /* synthetic */ k8 f10476c;

    RunnableC2367x7(k8 k8Var, zzp zzpVar) {
        this.f10476c = k8Var;
        this.f10475b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC2251f3 A = k8.A(this.f10476c);
        if (A == null) {
            ((m5) this.f10476c).a.t().m().m3876a("Failed to send consent settings to service");
            return;
        }
        try {
            C1581h.m8347h(this.f10475b);
            A.m3919K1(this.f10475b);
            k8.B(this.f10476c);
        } catch (RemoteException e) {
            ((m5) this.f10476c).a.t().m().m3875b("Failed to send consent settings to the service", e);
        }
    }
}
