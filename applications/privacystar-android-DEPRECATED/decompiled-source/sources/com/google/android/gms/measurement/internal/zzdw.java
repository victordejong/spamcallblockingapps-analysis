package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdw.class */
public final class zzdw implements Runnable {
    private final /* synthetic */ zzdn zzary;
    private final /* synthetic */ zzdr zzasg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdw(zzdr zzdrVar, zzdn zzdnVar) {
        this.zzasg = zzdrVar;
        this.zzary = zzdnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzag zzagVar;
        zzagVar = this.zzasg.zzasa;
        if (zzagVar == null) {
            this.zzasg.zzgo().zzjd().zzbx("Failed to send current screen to service");
            return;
        }
        try {
            if (this.zzary == null) {
                zzagVar.zza(0L, (String) null, (String) null, this.zzasg.getContext().getPackageName());
            } else {
                zzagVar.zza(this.zzary.zzarm, this.zzary.zzuw, this.zzary.zzarl, this.zzasg.getContext().getPackageName());
            }
            this.zzasg.zzcy();
        } catch (RemoteException e) {
            this.zzasg.zzgo().zzjd().zzg("Failed to send current screen to the service", e);
        }
    }
}
