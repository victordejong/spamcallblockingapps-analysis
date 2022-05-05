package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziz.class */
public final class zziz implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzig f9556f;

    /* renamed from: g */
    private final /* synthetic */ zzio f9557g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zziz(zzio zzioVar, zzig zzigVar) {
        this.f9557g = zzioVar;
        this.f9556f = zzigVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        zzejVar = this.f9557g.f9521d;
        if (zzejVar == null) {
            this.f9557g.mo11081c().m11560D().m11540a("Failed to send current screen to service");
            return;
        }
        try {
            if (this.f9556f == null) {
                zzejVar.mo11340R(0L, null, null, this.f9557g.mo11075f().getPackageName());
            } else {
                zzejVar.mo11340R(this.f9556f.f9489c, this.f9556f.f9487a, this.f9556f.f9488b, this.f9557g.mo11075f().getPackageName());
            }
            this.f9557g.m11179e0();
        } catch (RemoteException e) {
            this.f9557g.mo11081c().m11560D().m11539b("Failed to send current screen to the service", e);
        }
    }
}
