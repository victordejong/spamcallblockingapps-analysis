package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzir.class */
public final class zzir implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzaa zzc;
    final /* synthetic */ zzaa zzd;
    final /* synthetic */ zzjb zze;

    public zzir(zzjb zzjbVar, boolean z, zzp zzpVar, boolean z2, zzaa zzaaVar, zzaa zzaaVar2) {
        this.zze = zzjbVar;
        this.zza = zzpVar;
        this.zzb = z2;
        this.zzc = zzaaVar;
        this.zzd = zzaaVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdz zzdzVar;
        zzdzVar = this.zze.zzb;
        if (zzdzVar == null) {
            this.zze.zzx.zzat().zzb().zza("Discarding data. Failed to send conditional user property to service");
            return;
        }
        Preconditions.checkNotNull(this.zza);
        this.zze.zzk(zzdzVar, this.zzb ? null : this.zzc, this.zza);
        this.zze.zzP();
    }
}
