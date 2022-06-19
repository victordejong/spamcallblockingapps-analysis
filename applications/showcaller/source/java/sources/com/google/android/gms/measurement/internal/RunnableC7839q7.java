package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.q7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/q7.class */
public final class RunnableC7839q7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzp f35603d;

    /* renamed from: e */
    final /* synthetic */ C7773k8 f35604e;

    public RunnableC7839q7(C7773k8 c7773k8, zzp zzpVar) {
        this.f35604e = c7773k8;
        this.f35603d = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7708f3 abstractC7708f3;
        abstractC7708f3 = this.f35604e.f35402d;
        if (abstractC7708f3 == null) {
            this.f35604e.f35460a.mo6047C().m6195m().m6216a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            C6155o.m17018j(this.f35603d);
            abstractC7708f3.mo6226x5(this.f35603d);
            this.f35604e.f35460a.m6041I().m6357s();
            this.f35604e.m6282K(abstractC7708f3, null, this.f35603d);
            this.f35604e.m6289D();
        } catch (RemoteException e) {
            this.f35604e.f35460a.mo6047C().m6195m().m6215b("Failed to send app launch to the service", e);
        }
    }
}
