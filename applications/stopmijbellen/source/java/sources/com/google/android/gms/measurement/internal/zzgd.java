package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgd.class */
final class zzgd implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ zzgm zzb;

    public zzgd(zzgm zzgmVar, zzp zzpVar) {
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
        zzknVar2.zzT(zzpVar);
    }
}
