package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzhj.class */
public final class zzhj implements Runnable {
    final /* synthetic */ zzaf zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzhn zze;

    public zzhj(zzhn zzhnVar, zzaf zzafVar, int i, long j, boolean z) {
        this.zze = zzhnVar;
        this.zza = zzafVar;
        this.zzb = i;
        this.zzc = j;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zzr(this.zza);
        zzhn.zzW(this.zze, this.zza, this.zzb, this.zzc, false, this.zzd);
    }
}
