package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzht.class */
public final class zzht implements Runnable {
    public final /* synthetic */ zzaf zza;
    public final /* synthetic */ int zzb;
    public final /* synthetic */ long zzc;
    public final /* synthetic */ boolean zzd;
    public final /* synthetic */ zzhw zze;

    public zzht(zzhw zzhwVar, zzaf zzafVar, int i, long j, boolean z) {
        this.zze = zzhwVar;
        this.zza = zzafVar;
        this.zzb = i;
        this.zzc = j;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zzr(this.zza);
        zzhw.zzW(this.zze, this.zza, this.zzb, this.zzc, false, this.zzd);
    }
}
