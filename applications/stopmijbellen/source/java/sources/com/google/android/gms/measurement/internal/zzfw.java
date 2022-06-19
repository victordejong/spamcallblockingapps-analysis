package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfw.class */
final class zzfw implements Runnable {
    public final /* synthetic */ zzaa zza;
    public final /* synthetic */ zzp zzb;
    public final /* synthetic */ zzgm zzc;

    public zzfw(zzgm zzgmVar, zzaa zzaaVar, zzp zzpVar) {
        this.zzc = zzgmVar;
        this.zza = zzaaVar;
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkn zzknVar;
        zzkn zzknVar2;
        zzkn zzknVar3;
        zzknVar = this.zzc.zza;
        zzknVar.zzG();
        if (this.zza.zzc.zza() == null) {
            zzknVar3 = this.zzc.zza;
            zzknVar3.zzS(this.zza, this.zzb);
            return;
        }
        zzknVar2 = this.zzc.zza;
        zzknVar2.zzQ(this.zza, this.zzb);
    }
}
