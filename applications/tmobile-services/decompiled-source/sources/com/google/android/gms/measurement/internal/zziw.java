package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziw.class */
public final class zziw implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzn f9548f;

    /* renamed from: g */
    private final /* synthetic */ zzio f9549g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zziw(zzio zzioVar, zzn zznVar) {
        this.f9549g = zzioVar;
        this.f9548f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        zzejVar = this.f9549g.f9521d;
        if (zzejVar == null) {
            this.f9549g.mo11081c().m11560D().m11540a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            zzejVar.mo11329h0(this.f9548f);
            this.f9549g.m11596s().m11574I();
            this.f9549g.m11199K(zzejVar, null, this.f9548f);
            this.f9549g.m11179e0();
        } catch (RemoteException e) {
            this.f9549g.mo11081c().m11560D().m11539b("Failed to send app launch to the service", e);
        }
    }
}
