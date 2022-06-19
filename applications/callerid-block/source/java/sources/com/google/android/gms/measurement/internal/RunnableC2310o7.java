package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.y8;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.o7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/o7.class */
final class RunnableC2310o7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AtomicReference f10341b;

    /* renamed from: c */
    final /* synthetic */ zzp f10342c;

    /* renamed from: d */
    final /* synthetic */ k8 f10343d;

    RunnableC2310o7(k8 k8Var, AtomicReference atomicReference, zzp zzpVar) {
        this.f10343d = k8Var;
        this.f10341b = atomicReference;
        this.f10342c = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.f10341b) {
            try {
                try {
                    y8.a();
                } catch (RemoteException e) {
                    ((m5) this.f10343d).a.t().m().m3875b("Failed to get app instance id", e);
                    atomicReference = this.f10341b;
                }
                if (((m5) this.f10343d).a.z().w((String) null, C2232c3.f10079u0) && !((m5) this.f10343d).a.A().r().m3930h()) {
                    ((m5) this.f10343d).a.t().r().m3876a("Analytics storage consent denied; will not get app instance id");
                    ((m5) this.f10343d).a.F().p((String) null);
                    ((m5) this.f10343d).a.A().g.m4004b(null);
                    this.f10341b.set(null);
                    this.f10341b.notify();
                    return;
                }
                AbstractC2251f3 A = k8.A(this.f10343d);
                if (A == null) {
                    ((m5) this.f10343d).a.t().m().m3876a("Failed to get app instance id");
                    this.f10341b.notify();
                    return;
                }
                C1581h.m8347h(this.f10342c);
                this.f10341b.set(A.m3907l2(this.f10342c));
                String str = (String) this.f10341b.get();
                if (str != null) {
                    ((m5) this.f10343d).a.F().p(str);
                    ((m5) this.f10343d).a.A().g.m4004b(str);
                }
                k8.B(this.f10343d);
                atomicReference = this.f10341b;
                atomicReference.notify();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
