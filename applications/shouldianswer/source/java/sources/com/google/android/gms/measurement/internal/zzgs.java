package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgs.class */
final class zzgs implements Runnable {
    private final /* synthetic */ zzv zza;
    private final /* synthetic */ zzm zzb;
    private final /* synthetic */ zzgb zzc;

    public zzgs(zzgb zzgbVar, zzv zzvVar, zzm zzmVar) {
        this.zzc = zzgbVar;
        this.zza = zzvVar;
        this.zzb = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzke zzkeVar3;
        zzkeVar = this.zzc.zza;
        zzkeVar.zzo();
        if (this.zza.zzc.zza() == null) {
            zzkeVar3 = this.zzc.zza;
            zzkeVar3.zzb(this.zza, this.zzb);
            return;
        }
        zzkeVar2 = this.zzc.zza;
        zzkeVar2.zza(this.zza, this.zzb);
    }
}
