package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzge.class */
final class zzge implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ zzgm zzb;

    public zzge(zzgm zzgmVar, zzp zzpVar) {
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
        zzp zzpVar = this.zza;
        zzknVar2.zzav().zzg();
        zzknVar2.zzr();
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzaf zzc = zzaf.zzc(zzpVar.zzv);
        zzaf zzt = zzknVar2.zzt(zzpVar.zza);
        zzknVar2.zzau().zzk().zzc("Setting consent, package, consent", zzpVar.zza, zzc);
        zzknVar2.zzs(zzpVar.zza, zzc);
        if (zzc.zzi(zzt)) {
            zzknVar2.zzI(zzpVar);
        }
    }
}
