package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdv.class */
public final class zzdv implements Runnable {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzdr zzasg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdv(zzdr zzdrVar, zzh zzhVar) {
        this.zzasg = zzdrVar;
        this.zzaqn = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzag zzagVar;
        zzagVar = this.zzasg.zzasa;
        if (zzagVar == null) {
            this.zzasg.zzgo().zzjd().zzbx("Discarding data. Failed to send app launch");
            return;
        }
        try {
            zzagVar.zza(this.zzaqn);
            this.zzasg.zza(zzagVar, null, this.zzaqn);
            this.zzasg.zzcy();
        } catch (RemoteException e) {
            this.zzasg.zzgo().zzjd().zzg("Failed to send app launch to the service", e);
        }
    }
}
