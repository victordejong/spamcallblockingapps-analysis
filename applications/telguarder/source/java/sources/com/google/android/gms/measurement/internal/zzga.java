package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzga.class */
final class zzga implements Callable<List<zzki>> {
    final /* synthetic */ String zza;
    final /* synthetic */ zzgd zzb;

    public zzga(zzgd zzgdVar, String str) {
        this.zzb = zzgdVar;
        this.zza = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<zzki> call() throws Exception {
        zzkd zzkdVar;
        zzkd zzkdVar2;
        zzkdVar = this.zzb.zza;
        zzkdVar.zzK();
        zzkdVar2 = this.zzb.zza;
        return zzkdVar2.zzi().zzl(this.zza);
    }
}
