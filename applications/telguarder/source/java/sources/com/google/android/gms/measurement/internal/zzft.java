package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzft.class */
final class zzft implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ zzgd zzb;

    public zzft(zzgd zzgdVar, zzp zzpVar) {
        this.zzb = zzgdVar;
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkd zzkdVar;
        zzkd zzkdVar2;
        zzkdVar = this.zzb.zza;
        zzkdVar.zzK();
        zzkdVar2 = this.zzb.zza;
        zzkdVar2.zzM(this.zza);
    }
}
