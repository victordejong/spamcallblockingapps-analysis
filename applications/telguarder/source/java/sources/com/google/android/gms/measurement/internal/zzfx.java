package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfx.class */
final class zzfx implements Runnable {
    final /* synthetic */ zzas zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzgd zzc;

    public zzfx(zzgd zzgdVar, zzas zzasVar, String str) {
        this.zzc = zzgdVar;
        this.zza = zzasVar;
        this.zzb = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkd zzkdVar;
        zzkd zzkdVar2;
        zzkdVar = this.zzc.zza;
        zzkdVar.zzK();
        zzkdVar2 = this.zzc.zza;
        zzkdVar2.zzz(this.zza, this.zzb);
    }
}
