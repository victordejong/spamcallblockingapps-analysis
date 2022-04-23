package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hr.class */
public final class hr implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ hc f29787a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ik f29788b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hr(ik ikVar, hc hcVar) {
        this.f29788b = ikVar;
        this.f29787a = hcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        df dfVar = this.f29788b.f29842b;
        if (dfVar == null) {
            this.f29788b.t.c().f29506c.a("Failed to send current screen to service");
            return;
        }
        try {
            hc hcVar = this.f29787a;
            if (hcVar == null) {
                dfVar.a(0L, (String) null, (String) null, this.f29788b.t.f29583a.getPackageName());
            } else {
                dfVar.a(hcVar.f29744c, hcVar.f29742a, hcVar.f29743b, this.f29788b.t.f29583a.getPackageName());
            }
            this.f29788b.i();
        } catch (RemoteException e) {
            this.f29788b.t.c().f29506c.a("Failed to send current screen to the service", e);
        }
    }
}
