package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.C7382g9;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.o7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/o7.class */
public final class RunnableC7817o7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AtomicReference f35531d;

    /* renamed from: e */
    final /* synthetic */ zzp f35532e;

    /* renamed from: f */
    final /* synthetic */ C7773k8 f35533f;

    public RunnableC7817o7(C7773k8 c7773k8, AtomicReference atomicReference, zzp zzpVar) {
        this.f35533f = c7773k8;
        this.f35531d = atomicReference;
        this.f35532e = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AbstractC7708f3 abstractC7708f3;
        synchronized (this.f35531d) {
            try {
                C7382g9.m7385a();
            } catch (RemoteException e) {
                this.f35533f.f35460a.mo6047C().m6195m().m6215b("Failed to get app instance id", e);
                atomicReference = this.f35531d;
            }
            if (this.f35533f.f35460a.m6006y().m6471u(null, C7672c3.f35107w0) && !this.f35533f.f35460a.m6005z().m6460r().m6443h()) {
                this.f35533f.f35460a.mo6047C().m6190r().m6216a("Analytics storage consent denied; will not get app instance id");
                this.f35533f.f35460a.m6044F().m5907p(null);
                this.f35533f.f35460a.m6005z().f35198h.m6557b(null);
                this.f35531d.set(null);
                this.f35531d.notify();
                return;
            }
            abstractC7708f3 = this.f35533f.f35402d;
            if (abstractC7708f3 == null) {
                this.f35533f.f35460a.mo6047C().m6195m().m6216a("Failed to get app instance id");
                this.f35531d.notify();
                return;
            }
            C6155o.m17018j(this.f35532e);
            this.f35531d.set(abstractC7708f3.mo6230r1(this.f35532e));
            String str = (String) this.f35531d.get();
            if (str != null) {
                this.f35533f.f35460a.m6044F().m5907p(str);
                this.f35533f.f35460a.m6005z().f35198h.m6557b(str);
            }
            this.f35533f.m6289D();
            atomicReference = this.f35531d;
            atomicReference.notify();
        }
    }
}
