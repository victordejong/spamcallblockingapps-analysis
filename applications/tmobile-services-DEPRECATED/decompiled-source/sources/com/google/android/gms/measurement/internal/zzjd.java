package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjd.class */
public final class zzjd implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzn f9569f;

    /* renamed from: g */
    private final /* synthetic */ zzio f9570g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjd(zzio zzioVar, zzn zznVar) {
        this.f9570g = zzioVar;
        this.f9569f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        zzejVar = this.f9570g.f9521d;
        if (zzejVar == null) {
            this.f9570g.mo11081c().m11560D().m11540a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            zzejVar.mo11325q0(this.f9569f);
            this.f9570g.m11179e0();
        } catch (RemoteException e) {
            this.f9570g.mo11081c().m11560D().m11539b("Failed to send measurementEnabled to the service", e);
        }
    }
}
