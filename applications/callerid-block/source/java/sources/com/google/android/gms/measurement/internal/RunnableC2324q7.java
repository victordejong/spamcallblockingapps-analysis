package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* renamed from: com.google.android.gms.measurement.internal.q7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/q7.class */
final class RunnableC2324q7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzp f10369b;

    /* renamed from: c */
    final /* synthetic */ k8 f10370c;

    RunnableC2324q7(k8 k8Var, zzp zzpVar) {
        this.f10370c = k8Var;
        this.f10369b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC2251f3 A = k8.A(this.f10370c);
        if (A == null) {
            ((m5) this.f10370c).a.t().m().m3876a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            C1581h.m8347h(this.f10369b);
            A.m3906r4(this.f10369b);
            ((m5) this.f10370c).a.I().s();
            this.f10370c.K(A, (AbstractSafeParcelable) null, this.f10369b);
            k8.B(this.f10370c);
        } catch (RemoteException e) {
            ((m5) this.f10370c).a.t().m().m3875b("Failed to send app launch to the service", e);
        }
    }
}
