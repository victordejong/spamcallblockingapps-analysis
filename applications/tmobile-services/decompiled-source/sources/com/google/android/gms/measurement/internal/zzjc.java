package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjc.class */
public final class zzjc implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzn f9567f;

    /* renamed from: g */
    private final /* synthetic */ zzio f9568g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjc(zzio zzioVar, zzn zznVar) {
        this.f9568g = zzioVar;
        this.f9567f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        zzejVar = this.f9568g.f9521d;
        if (zzejVar == null) {
            this.f9568g.mo11081c().m11560D().m11540a("Failed to send consent settings to service");
            return;
        }
        try {
            zzejVar.mo11327m(this.f9567f);
            this.f9568g.m11179e0();
        } catch (RemoteException e) {
            this.f9568g.mo11081c().m11560D().m11539b("Failed to send consent settings to the service", e);
        }
    }
}
