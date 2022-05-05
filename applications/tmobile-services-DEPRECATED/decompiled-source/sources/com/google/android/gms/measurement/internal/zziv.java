package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziv.class */
public final class zziv implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzn f9546f;

    /* renamed from: g */
    private final /* synthetic */ zzio f9547g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zziv(zzio zzioVar, zzn zznVar) {
        this.f9547g = zzioVar;
        this.f9546f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        zzejVar = this.f9547g.f9521d;
        if (zzejVar == null) {
            this.f9547g.mo11081c().m11560D().m11540a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            zzejVar.mo11337T(this.f9546f);
        } catch (RemoteException e) {
            this.f9547g.mo11081c().m11560D().m11539b("Failed to reset data on the service: remote exception", e);
        }
        this.f9547g.m11179e0();
    }
}
