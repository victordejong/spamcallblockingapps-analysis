package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgm.class */
final class zzgm implements Runnable {
    private final /* synthetic */ zzan zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ zzgb zzc;

    public zzgm(zzgb zzgbVar, zzan zzanVar, String str) {
        this.zzc = zzgbVar;
        this.zza = zzanVar;
        this.zzb = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.zzc.zza;
        zzkeVar.zzo();
        zzkeVar2 = this.zzc.zza;
        zzkeVar2.zza(this.zza, this.zzb);
    }
}
