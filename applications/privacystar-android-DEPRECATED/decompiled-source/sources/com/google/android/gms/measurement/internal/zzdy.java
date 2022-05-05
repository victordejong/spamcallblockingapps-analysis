package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdy.class */
public final class zzdy implements Runnable {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzdr zzasg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdy(zzdr zzdrVar, zzh zzhVar) {
        this.zzasg = zzdrVar;
        this.zzaqn = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzag zzagVar;
        zzagVar = this.zzasg.zzasa;
        if (zzagVar == null) {
            this.zzasg.zzgo().zzjd().zzbx("Failed to send measurementEnabled to service");
            return;
        }
        try {
            zzagVar.zzb(this.zzaqn);
            this.zzasg.zzcy();
        } catch (RemoteException e) {
            this.zzasg.zzgo().zzjd().zzg("Failed to send measurementEnabled to the service", e);
        }
    }
}
