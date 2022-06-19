package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzgc.class */
final class zzgc implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzgd zze;

    public zzgc(zzgd zzgdVar, String str, String str2, String str3, long j) {
        this.zze = zzgdVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkd zzkdVar;
        zzkd zzkdVar2;
        String str = this.zza;
        if (str == null) {
            zzkdVar2 = this.zze.zza;
            zzkdVar2.zzR().zzx().zzn(this.zzb, null);
            return;
        }
        zzhu zzhuVar = new zzhu(this.zzc, str, this.zzd);
        zzkdVar = this.zze.zza;
        zzkdVar.zzR().zzx().zzn(this.zzb, zzhuVar);
    }
}
