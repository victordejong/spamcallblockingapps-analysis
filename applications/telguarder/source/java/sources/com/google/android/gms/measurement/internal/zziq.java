package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zziq.class */
public final class zziq implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzas zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzjb zze;

    public zziq(zzjb zzjbVar, boolean z, zzp zzpVar, boolean z2, zzas zzasVar, String str) {
        this.zze = zzjbVar;
        this.zza = zzpVar;
        this.zzb = z2;
        this.zzc = zzasVar;
        this.zzd = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdz zzdzVar;
        zzdzVar = this.zze.zzb;
        if (zzdzVar == null) {
            this.zze.zzx.zzat().zzb().zza("Discarding data. Failed to send event to service");
            return;
        }
        Preconditions.checkNotNull(this.zza);
        this.zze.zzk(zzdzVar, this.zzb ? null : this.zzc, this.zza);
        this.zze.zzP();
    }
}
