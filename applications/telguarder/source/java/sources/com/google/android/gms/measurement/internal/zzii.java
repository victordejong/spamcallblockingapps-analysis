package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzii.class */
public final class zzii implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ zzjb zzb;

    public zzii(zzjb zzjbVar, zzp zzpVar) {
        this.zzb = zzjbVar;
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdz zzdzVar;
        zzdzVar = this.zzb.zzb;
        if (zzdzVar == null) {
            this.zzb.zzx.zzat().zzb().zza("Discarding data. Failed to send app launch");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzdzVar.zzf(this.zza);
            this.zzb.zzx.zzn().zzn();
            this.zzb.zzk(zzdzVar, null, this.zza);
            this.zzb.zzP();
        } catch (RemoteException e) {
            this.zzb.zzx.zzat().zzb().zzb("Failed to send app launch to the service", e);
        }
    }
}
