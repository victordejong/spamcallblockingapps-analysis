package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfo.class */
final class zzfo implements Runnable {
    final /* synthetic */ zzaa zza;
    final /* synthetic */ zzgd zzb;

    public zzfo(zzgd zzgdVar, zzaa zzaaVar) {
        this.zzb = zzgdVar;
        this.zza = zzaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkd zzkdVar;
        zzkd zzkdVar2;
        zzkd zzkdVar3;
        zzkdVar = this.zzb.zza;
        zzkdVar.zzK();
        if (this.zza.zzc.zza() == null) {
            zzkdVar3 = this.zzb.zza;
            zzkdVar3.zzV(this.zza);
            return;
        }
        zzkdVar2 = this.zzb.zza;
        zzkdVar2.zzT(this.zza);
    }
}
