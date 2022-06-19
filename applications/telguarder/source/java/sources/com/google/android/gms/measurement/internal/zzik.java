package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzik.class */
public final class zzik implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ Bundle zzb;
    final /* synthetic */ zzjb zzc;

    public zzik(zzjb zzjbVar, zzp zzpVar, Bundle bundle) {
        this.zzc = zzjbVar;
        this.zza = zzpVar;
        this.zzb = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdz zzdzVar;
        zzdzVar = this.zzc.zzb;
        if (zzdzVar == null) {
            this.zzc.zzx.zzat().zzb().zza("Failed to send default event parameters to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzdzVar.zzt(this.zzb, this.zza);
        } catch (RemoteException e) {
            this.zzc.zzx.zzat().zzb().zzb("Failed to send default event parameters to service", e);
        }
    }
}
