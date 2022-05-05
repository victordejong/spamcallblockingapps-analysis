package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziy.class */
public final class zziy implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Bundle f9553f;

    /* renamed from: g */
    private final /* synthetic */ zzn f9554g;

    /* renamed from: h */
    private final /* synthetic */ zzio f9555h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zziy(zzio zzioVar, Bundle bundle, zzn zznVar) {
        this.f9555h = zzioVar;
        this.f9553f = bundle;
        this.f9554g = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        zzejVar = this.f9555h.f9521d;
        if (zzejVar == null) {
            this.f9555h.mo11081c().m11560D().m11540a("Failed to send default event parameters to service");
            return;
        }
        try {
            zzejVar.mo11346B0(this.f9553f, this.f9554g);
        } catch (RemoteException e) {
            this.f9555h.mo11081c().m11560D().m11539b("Failed to send default event parameters to service", e);
        }
    }
}
