package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziw.class */
public final class zziw implements Runnable {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ zzij zzb;

    public zziw(zzij zzijVar, zzm zzmVar) {
        this.zzb = zzijVar;
        this.zza = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        zzeoVar = this.zzb.zzb;
        if (zzeoVar == null) {
            this.zzb.zzr().zzf().zza("Failed to send measurementEnabled to service");
            return;
        }
        try {
            zzeoVar.zzb(this.zza);
            this.zzb.zzaj();
        } catch (RemoteException e) {
            this.zzb.zzr().zzf().zza("Failed to send measurementEnabled to the service", e);
        }
    }
}
