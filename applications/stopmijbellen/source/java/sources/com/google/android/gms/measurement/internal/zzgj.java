package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgj.class */
final class zzgj implements Callable<List<zzks>> {
    public final /* synthetic */ String zza;
    public final /* synthetic */ zzgm zzb;

    public zzgj(zzgm zzgmVar, String str) {
        this.zzb = zzgmVar;
        this.zza = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<zzks> call() throws Exception {
        zzkn zzknVar;
        zzkn zzknVar2;
        zzknVar = this.zzb.zza;
        zzknVar.zzG();
        zzknVar2 = this.zzb.zza;
        return zzknVar2.zzi().zzl(this.zza);
    }
}
