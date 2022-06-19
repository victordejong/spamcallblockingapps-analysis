package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzhi.class */
public final class zzhi implements Runnable {
    final /* synthetic */ zzaf zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ int zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ boolean zze;
    final /* synthetic */ zzhn zzf;

    public zzhi(zzhn zzhnVar, zzaf zzafVar, long j, int i, long j2, boolean z) {
        this.zzf = zzhnVar;
        this.zza = zzafVar;
        this.zzb = j;
        this.zzc = i;
        this.zzd = j2;
        this.zze = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzf.zzr(this.zza);
        this.zzf.zzG(this.zzb, false);
        zzhn.zzW(this.zzf, this.zza, this.zzc, this.zzd, true, this.zze);
    }
}
