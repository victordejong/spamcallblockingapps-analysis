package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.x7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/x7.class */
public final class RunnableC7916x7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzp f35796d;

    /* renamed from: e */
    final /* synthetic */ C7773k8 f35797e;

    public RunnableC7916x7(C7773k8 c7773k8, zzp zzpVar) {
        this.f35797e = c7773k8;
        this.f35796d = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7708f3 abstractC7708f3;
        abstractC7708f3 = this.f35797e.f35402d;
        if (abstractC7708f3 == null) {
            this.f35797e.f35460a.mo6047C().m6195m().m6216a("Failed to send consent settings to service");
            return;
        }
        try {
            C6155o.m17018j(this.f35796d);
            abstractC7708f3.mo6239a1(this.f35796d);
            this.f35797e.m6289D();
        } catch (RemoteException e) {
            this.f35797e.f35460a.mo6047C().m6195m().m6215b("Failed to send consent settings to the service", e);
        }
    }
}
