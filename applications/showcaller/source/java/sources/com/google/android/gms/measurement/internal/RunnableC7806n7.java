package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.n7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/n7.class */
public final class RunnableC7806n7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzp f35489d;

    /* renamed from: e */
    final /* synthetic */ C7773k8 f35490e;

    public RunnableC7806n7(C7773k8 c7773k8, zzp zzpVar) {
        this.f35490e = c7773k8;
        this.f35489d = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7708f3 abstractC7708f3;
        abstractC7708f3 = this.f35490e.f35402d;
        if (abstractC7708f3 == null) {
            this.f35490e.f35460a.mo6047C().m6195m().m6216a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            C6155o.m17018j(this.f35489d);
            abstractC7708f3.mo6241V2(this.f35489d);
        } catch (RemoteException e) {
            this.f35490e.f35460a.mo6047C().m6195m().m6215b("Failed to reset data on the service: remote exception", e);
        }
        this.f35490e.m6289D();
    }
}
