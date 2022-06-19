package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgg.class */
final class zzgg implements Runnable {
    public final /* synthetic */ zzas zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzgm zzc;

    public zzgg(zzgm zzgmVar, zzas zzasVar, String str) {
        this.zzc = zzgmVar;
        this.zza = zzasVar;
        this.zzb = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkn zzknVar;
        zzkn zzknVar2;
        zzknVar = this.zzc.zza;
        zzknVar.zzG();
        zzknVar2 = this.zzc.zza;
        zzknVar2.zzv(this.zza, this.zzb);
    }
}
