package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzif.class */
public final class zzif implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ zzjb zzb;

    public zzif(zzjb zzjbVar, zzp zzpVar) {
        this.zzb = zzjbVar;
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdz zzdzVar;
        zzdzVar = this.zzb.zzb;
        if (zzdzVar == null) {
            this.zzb.zzx.zzat().zzb().zza("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzdzVar.zzs(this.zza);
        } catch (RemoteException e) {
            this.zzb.zzx.zzat().zzb().zzb("Failed to reset data on the service: remote exception", e);
        }
        this.zzb.zzP();
    }
}
