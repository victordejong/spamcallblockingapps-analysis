package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziy.class */
public final class zziy implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ boolean zzb;
    private final /* synthetic */ zzv zzc;
    private final /* synthetic */ zzm zzd;
    private final /* synthetic */ zzv zze;
    private final /* synthetic */ zzij zzf;

    public zziy(zzij zzijVar, boolean z, boolean z2, zzv zzvVar, zzm zzmVar, zzv zzvVar2) {
        this.zzf = zzijVar;
        this.zza = z;
        this.zzb = z2;
        this.zzc = zzvVar;
        this.zzd = zzmVar;
        this.zze = zzvVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        zzeoVar = this.zzf.zzb;
        if (zzeoVar == null) {
            this.zzf.zzr().zzf().zza("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.zza) {
            this.zzf.zza(zzeoVar, this.zzb ? null : this.zzc, this.zzd);
        } else {
            try {
                if (TextUtils.isEmpty(this.zze.zza)) {
                    zzeoVar.zza(this.zzc, this.zzd);
                } else {
                    zzeoVar.zza(this.zzc);
                }
            } catch (RemoteException e) {
                this.zzf.zzr().zzf().zza("Failed to send conditional user property to the service", e);
            }
        }
        this.zzf.zzaj();
    }
}
