package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfz.class */
final class zzfz implements Runnable {
    final /* synthetic */ zzkg zza;
    final /* synthetic */ zzp zzb;
    final /* synthetic */ zzgd zzc;

    public zzfz(zzgd zzgdVar, zzkg zzkgVar, zzp zzpVar) {
        this.zzc = zzgdVar;
        this.zza = zzkgVar;
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkd zzkdVar;
        zzkd zzkdVar2;
        zzkd zzkdVar3;
        zzkdVar = this.zzc.zza;
        zzkdVar.zzK();
        if (this.zza.zza() == null) {
            zzkdVar3 = this.zzc.zza;
            zzkdVar3.zzO(this.zza, this.zzb);
            return;
        }
        zzkdVar2 = this.zzc.zza;
        zzkdVar2.zzN(this.zza, this.zzb);
    }
}
