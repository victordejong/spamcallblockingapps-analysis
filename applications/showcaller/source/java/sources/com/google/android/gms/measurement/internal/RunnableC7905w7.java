package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.w7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/w7.class */
public final class RunnableC7905w7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzp f35779d;

    /* renamed from: e */
    final /* synthetic */ C7773k8 f35780e;

    public RunnableC7905w7(C7773k8 c7773k8, zzp zzpVar) {
        this.f35780e = c7773k8;
        this.f35779d = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7708f3 abstractC7708f3;
        abstractC7708f3 = this.f35780e.f35402d;
        if (abstractC7708f3 == null) {
            this.f35780e.f35460a.mo6047C().m6195m().m6216a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            C6155o.m17018j(this.f35779d);
            abstractC7708f3.mo6240Z3(this.f35779d);
            this.f35780e.m6289D();
        } catch (RemoteException e) {
            this.f35780e.f35460a.mo6047C().m6195m().m6215b("Failed to send measurementEnabled to the service", e);
        }
    }
}
