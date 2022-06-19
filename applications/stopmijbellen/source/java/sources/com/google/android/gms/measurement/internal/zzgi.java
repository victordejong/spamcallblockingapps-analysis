package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgi.class */
final class zzgi implements Runnable {
    public final /* synthetic */ zzkq zza;
    public final /* synthetic */ zzp zzb;
    public final /* synthetic */ zzgm zzc;

    public zzgi(zzgm zzgmVar, zzkq zzkqVar, zzp zzpVar) {
        this.zzc = zzgmVar;
        this.zza = zzkqVar;
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkn zzknVar;
        zzkn zzknVar2;
        zzkn zzknVar3;
        zzknVar = this.zzc.zza;
        zzknVar.zzG();
        if (this.zza.zza() == null) {
            zzknVar3 = this.zzc.zza;
            zzknVar3.zzK(this.zza, this.zzb);
            return;
        }
        zzknVar2 = this.zzc.zza;
        zzknVar2.zzJ(this.zza, this.zzb);
    }
}
