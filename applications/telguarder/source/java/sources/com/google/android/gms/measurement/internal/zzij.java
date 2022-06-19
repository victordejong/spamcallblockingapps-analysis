package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzij.class */
public final class zzij implements Runnable {
    final /* synthetic */ zzhu zza;
    final /* synthetic */ zzjb zzb;

    public zzij(zzjb zzjbVar, zzhu zzhuVar) {
        this.zzb = zzjbVar;
        this.zza = zzhuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdz zzdzVar;
        zzdzVar = this.zzb.zzb;
        if (zzdzVar == null) {
            this.zzb.zzx.zzat().zzb().zza("Failed to send current screen to service");
            return;
        }
        try {
            zzhu zzhuVar = this.zza;
            if (zzhuVar == null) {
                zzdzVar.zzk(0L, null, null, this.zzb.zzx.zzaw().getPackageName());
            } else {
                zzdzVar.zzk(zzhuVar.zzc, zzhuVar.zza, zzhuVar.zzb, this.zzb.zzx.zzaw().getPackageName());
            }
            this.zzb.zzP();
        } catch (RemoteException e) {
            this.zzb.zzx.zzat().zzb().zzb("Failed to send current screen to the service", e);
        }
    }
}
