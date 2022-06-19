package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfw.class */
final class zzfw implements Runnable {
    final /* synthetic */ zzas zza;
    final /* synthetic */ zzp zzb;
    final /* synthetic */ zzgd zzc;

    public zzfw(zzgd zzgdVar, zzas zzasVar, zzp zzpVar) {
        this.zzc = zzgdVar;
        this.zza = zzasVar;
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkd zzkdVar;
        zzkd zzkdVar2;
        zzas zzb = this.zzc.zzb(this.zza, this.zzb);
        zzkdVar = this.zzc.zza;
        zzkdVar.zzK();
        zzkdVar2 = this.zzc.zza;
        zzkdVar2.zzB(zzb, this.zzb);
    }
}
