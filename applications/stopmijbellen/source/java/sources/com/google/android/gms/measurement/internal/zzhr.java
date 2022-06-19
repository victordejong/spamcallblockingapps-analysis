package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhr.class */
public final class zzhr implements Runnable {
    public final /* synthetic */ zzaf zza;
    public final /* synthetic */ long zzb;
    public final /* synthetic */ int zzc;
    public final /* synthetic */ long zzd;
    public final /* synthetic */ boolean zze;
    public final /* synthetic */ zzhw zzf;

    public zzhr(zzhw zzhwVar, zzaf zzafVar, long j, int i, long j2, boolean z) {
        this.zzf = zzhwVar;
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
        zzhw.zzW(this.zzf, this.zza, this.zzc, this.zzd, true, this.zze);
    }
}
