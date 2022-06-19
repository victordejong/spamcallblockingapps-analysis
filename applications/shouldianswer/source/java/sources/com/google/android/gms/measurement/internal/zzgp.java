package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgp.class */
final class zzgp implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ long zzd;
    private final /* synthetic */ zzgb zze;

    public zzgp(zzgb zzgbVar, String str, String str2, String str3, long j) {
        this.zze = zzgbVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzke zzkeVar;
        zzke zzkeVar2;
        String str = this.zza;
        if (str == null) {
            zzkeVar2 = this.zze.zza;
            zzkeVar2.zzs().zzv().zza(this.zzb, (zzif) null);
            return;
        }
        zzif zzifVar = new zzif(this.zzc, str, this.zzd);
        zzkeVar = this.zze.zza;
        zzkeVar.zzs().zzv().zza(this.zzb, zzifVar);
    }
}
