package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgi.class */
final class zzgi implements Callable<List<zzv>> {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ zzgb zzd;

    public zzgi(zzgb zzgbVar, zzm zzmVar, String str, String str2) {
        this.zzd = zzgbVar;
        this.zza = zzmVar;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzv> call() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.zzd.zza;
        zzkeVar.zzo();
        zzkeVar2 = this.zzd.zza;
        return zzkeVar2.zze().zzb(this.zza.zza, this.zzb, this.zzc);
    }
}
