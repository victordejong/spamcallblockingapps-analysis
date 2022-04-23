package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.w7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/w7.class */
final class RunnableC2360w7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzp f10462b;

    /* renamed from: c */
    final /* synthetic */ k8 f10463c;

    RunnableC2360w7(k8 k8Var, zzp zzpVar) {
        this.f10463c = k8Var;
        this.f10462b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC2251f3 A = k8.A(this.f10463c);
        if (A == null) {
            ((m5) this.f10463c).a.t().m().m3876a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            C1581h.m8347h(this.f10462b);
            A.m3915X1(this.f10462b);
            k8.B(this.f10463c);
        } catch (RemoteException e) {
            ((m5) this.f10463c).a.t().m().m3875b("Failed to send measurementEnabled to the service", e);
        }
    }
}
