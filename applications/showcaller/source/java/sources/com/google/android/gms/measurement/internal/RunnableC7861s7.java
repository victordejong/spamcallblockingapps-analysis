package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.s7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/s7.class */
public final class RunnableC7861s7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzp f35676d;

    /* renamed from: e */
    final /* synthetic */ Bundle f35677e;

    /* renamed from: f */
    final /* synthetic */ C7773k8 f35678f;

    public RunnableC7861s7(C7773k8 c7773k8, zzp zzpVar, Bundle bundle) {
        this.f35678f = c7773k8;
        this.f35676d = zzpVar;
        this.f35677e = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7708f3 abstractC7708f3;
        abstractC7708f3 = this.f35678f.f35402d;
        if (abstractC7708f3 == null) {
            this.f35678f.f35460a.mo6047C().m6195m().m6216a("Failed to send default event parameters to service");
            return;
        }
        try {
            C6155o.m17018j(this.f35676d);
            abstractC7708f3.mo6236i3(this.f35677e, this.f35676d);
        } catch (RemoteException e) {
            this.f35678f.f35460a.mo6047C().m6195m().m6215b("Failed to send default event parameters to service", e);
        }
    }
}
