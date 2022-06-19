package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzir.class */
public final class zzir implements Runnable {
    private final /* synthetic */ zzif zza;
    private final /* synthetic */ zzij zzb;

    public zzir(zzij zzijVar, zzif zzifVar) {
        this.zzb = zzijVar;
        this.zza = zzifVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        zzeoVar = this.zzb.zzb;
        if (zzeoVar == null) {
            this.zzb.zzr().zzf().zza("Failed to send current screen to service");
            return;
        }
        try {
            if (this.zza == null) {
                zzeoVar.zza(0L, (String) null, (String) null, this.zzb.zzn().getPackageName());
            } else {
                zzeoVar.zza(this.zza.zzc, this.zza.zza, this.zza.zzb, this.zzb.zzn().getPackageName());
            }
            this.zzb.zzaj();
        } catch (RemoteException e) {
            this.zzb.zzr().zzf().zza("Failed to send current screen to the service", e);
        }
    }
}
