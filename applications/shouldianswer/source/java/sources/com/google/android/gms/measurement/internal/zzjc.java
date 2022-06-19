package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjc.class */
public final class zzjc implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzm zzd;
    private final /* synthetic */ zzn zze;
    private final /* synthetic */ zzij zzf;

    public zzjc(zzij zzijVar, String str, String str2, boolean z, zzm zzmVar, zzn zznVar) {
        this.zzf = zzijVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = z;
        this.zzd = zzmVar;
        this.zze = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        Bundle bundle = new Bundle();
        try {
            zzeoVar = this.zzf.zzb;
            if (zzeoVar == null) {
                this.zzf.zzr().zzf().zza("Failed to get user properties", this.zza, this.zzb);
                return;
            }
            bundle = zzkm.zza(zzeoVar.zza(this.zza, this.zzb, this.zzc, this.zzd));
            this.zzf.zzaj();
        } catch (RemoteException e) {
            this.zzf.zzr().zzf().zza("Failed to get user properties", this.zza, e);
        } finally {
            this.zzf.zzp().zza(this.zze, bundle);
        }
    }
}
