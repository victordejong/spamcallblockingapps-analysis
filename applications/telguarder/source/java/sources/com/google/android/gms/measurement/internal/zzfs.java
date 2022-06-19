package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfs.class */
final class zzfs implements Callable<List<zzaa>> {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzgd zzd;

    public zzfs(zzgd zzgdVar, String str, String str2, String str3) {
        this.zzd = zzgdVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<zzaa> call() throws Exception {
        zzkd zzkdVar;
        zzkd zzkdVar2;
        zzkdVar = this.zzd.zza;
        zzkdVar.zzK();
        zzkdVar2 = this.zzd.zza;
        return zzkdVar2.zzi().zzq(this.zza, this.zzb, this.zzc);
    }
}
