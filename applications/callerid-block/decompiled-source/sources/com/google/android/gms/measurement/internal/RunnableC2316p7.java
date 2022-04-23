package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.AbstractC2102cc;
import com.google.android.gms.internal.measurement.y8;
/* renamed from: com.google.android.gms.measurement.internal.p7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/p7.class */
final class RunnableC2316p7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzp f10354b;

    /* renamed from: c */
    final /* synthetic */ AbstractC2102cc f10355c;

    /* renamed from: d */
    final /* synthetic */ k8 f10356d;

    RunnableC2316p7(k8 k8Var, zzp zzpVar, AbstractC2102cc ccVar) {
        this.f10356d = k8Var;
        this.f10354b = zzpVar;
        this.f10355c = ccVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = null;
        try {
            try {
                y8.a();
                if (!((m5) this.f10356d).a.z().w((String) null, C2232c3.f10079u0) || ((m5) this.f10356d).a.A().r().m3930h()) {
                    AbstractC2251f3 A = k8.A(this.f10356d);
                    if (A == null) {
                        ((m5) this.f10356d).a.t().m().m3876a("Failed to get app instance id");
                        str = null;
                    } else {
                        C1581h.m8347h(this.f10354b);
                        String l2 = A.m3907l2(this.f10354b);
                        if (l2 != null) {
                            ((m5) this.f10356d).a.F().p(l2);
                            ((m5) this.f10356d).a.A().g.m4004b(l2);
                        }
                        k8.B(this.f10356d);
                        str = l2;
                    }
                } else {
                    ((m5) this.f10356d).a.t().r().m3876a("Analytics storage consent denied; will not get app instance id");
                    ((m5) this.f10356d).a.F().p((String) null);
                    ((m5) this.f10356d).a.A().g.m4004b(null);
                    str = null;
                }
            } catch (RemoteException e) {
                ((m5) this.f10356d).a.t().m().m3875b("Failed to get app instance id", e);
            }
            ((m5) this.f10356d).a.G().R(this.f10355c, str);
        } catch (Throwable th) {
            ((m5) this.f10356d).a.G().R(this.f10355c, (String) null);
            throw th;
        }
    }
}
