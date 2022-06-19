package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfx.class */
final class zzfx implements Runnable {
    public final /* synthetic */ zzaa zza;
    public final /* synthetic */ zzgm zzb;

    public zzfx(zzgm zzgmVar, zzaa zzaaVar) {
        this.zzb = zzgmVar;
        this.zza = zzaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkn zzknVar;
        zzkn zzknVar2;
        zzkn zzknVar3;
        zzknVar = this.zzb.zza;
        zzknVar.zzG();
        if (this.zza.zzc.zza() == null) {
            zzknVar3 = this.zzb.zza;
            zzknVar3.zzR(this.zza);
            return;
        }
        zzknVar2 = this.zzb.zza;
        zzknVar2.zzP(this.zza);
    }
}
