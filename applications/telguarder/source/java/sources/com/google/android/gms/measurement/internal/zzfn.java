package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfn.class */
final class zzfn implements Runnable {
    final /* synthetic */ zzaa zza;
    final /* synthetic */ zzp zzb;
    final /* synthetic */ zzgd zzc;

    public zzfn(zzgd zzgdVar, zzaa zzaaVar, zzp zzpVar) {
        this.zzc = zzgdVar;
        this.zza = zzaaVar;
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkd zzkdVar;
        zzkd zzkdVar2;
        zzkd zzkdVar3;
        zzkdVar = this.zzc.zza;
        zzkdVar.zzK();
        if (this.zza.zzc.zza() == null) {
            zzkdVar3 = this.zzc.zza;
            zzkdVar3.zzW(this.zza, this.zzb);
            return;
        }
        zzkdVar2 = this.zzc.zza;
        zzkdVar2.zzU(this.zza, this.zzb);
    }
}
