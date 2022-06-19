package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgk.class */
final class zzgk implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ zzgm zzb;

    public zzgk(zzgm zzgmVar, zzp zzpVar) {
        this.zzb = zzgmVar;
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkn zzknVar;
        zzkn zzknVar2;
        zzknVar = this.zzb.zza;
        zzknVar.zzG();
        zzknVar2 = this.zzb.zza;
        zzknVar2.zzO(this.zza);
    }
}
