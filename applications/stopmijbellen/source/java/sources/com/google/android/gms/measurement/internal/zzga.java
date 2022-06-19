package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzga.class */
final class zzga implements Callable<List<zzaa>> {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ zzgm zzd;

    public zzga(zzgm zzgmVar, String str, String str2, String str3) {
        this.zzd = zzgmVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<zzaa> call() throws Exception {
        zzkn zzknVar;
        zzkn zzknVar2;
        zzknVar = this.zzd.zza;
        zzknVar.zzG();
        zzknVar2 = this.zzd.zza;
        return zzknVar2.zzi().zzq(this.zza, this.zzb, this.zzc);
    }
}
