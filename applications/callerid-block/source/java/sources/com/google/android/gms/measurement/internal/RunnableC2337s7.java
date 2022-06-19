package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.s7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/s7.class */
final class RunnableC2337s7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzp f10400b;

    /* renamed from: c */
    final /* synthetic */ Bundle f10401c;

    /* renamed from: d */
    final /* synthetic */ k8 f10402d;

    RunnableC2337s7(k8 k8Var, zzp zzpVar, Bundle bundle) {
        this.f10402d = k8Var;
        this.f10400b = zzpVar;
        this.f10401c = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC2251f3 A = k8.A(this.f10402d);
        if (A == null) {
            ((m5) this.f10402d).a.t().m().m3876a("Failed to send default event parameters to service");
            return;
        }
        try {
            C1581h.m8347h(this.f10400b);
            A.m3911c6(this.f10401c, this.f10400b);
        } catch (RemoteException e) {
            ((m5) this.f10402d).a.t().m().m3875b("Failed to send default event parameters to service", e);
        }
    }
}
