package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.measurement.internal.r7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/r7.class */
public final class RunnableC7850r7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C7676c7 f35620d;

    /* renamed from: e */
    final /* synthetic */ C7773k8 f35621e;

    public RunnableC7850r7(C7773k8 c7773k8, C7676c7 c7676c7) {
        this.f35621e = c7773k8;
        this.f35620d = c7676c7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7708f3 abstractC7708f3;
        abstractC7708f3 = this.f35621e.f35402d;
        if (abstractC7708f3 == null) {
            this.f35621e.f35460a.mo6047C().m6195m().m6216a("Failed to send current screen to service");
            return;
        }
        try {
            C7676c7 c7676c7 = this.f35620d;
            if (c7676c7 == null) {
                abstractC7708f3.mo6229r2(0L, null, null, this.f35621e.f35460a.mo6030a().getPackageName());
            } else {
                abstractC7708f3.mo6229r2(c7676c7.f35124c, c7676c7.f35122a, c7676c7.f35123b, this.f35621e.f35460a.mo6030a().getPackageName());
            }
            this.f35621e.m6289D();
        } catch (RemoteException e) {
            this.f35621e.f35460a.mo6047C().m6195m().m6215b("Failed to send current screen to the service", e);
        }
    }
}
