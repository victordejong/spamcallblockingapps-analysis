package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgn.class */
final class zzgn implements Callable<List<zzkn>> {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ zzgb zzb;

    public zzgn(zzgb zzgbVar, zzm zzmVar) {
        this.zzb = zzgbVar;
        this.zza = zzmVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzkn> call() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.zzb.zza;
        zzkeVar.zzo();
        zzkeVar2 = this.zzb.zza;
        return zzkeVar2.zze().zza(this.zza.zza);
    }
}
