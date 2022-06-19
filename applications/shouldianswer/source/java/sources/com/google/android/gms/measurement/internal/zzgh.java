package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgh.class */
final class zzgh implements Callable<List<zzv>> {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ zzgb zzd;

    public zzgh(zzgb zzgbVar, String str, String str2, String str3) {
        this.zzd = zzgbVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzv> call() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.zzd.zza;
        zzkeVar.zzo();
        zzkeVar2 = this.zzd.zza;
        return zzkeVar2.zze().zzb(this.zza, this.zzb, this.zzc);
    }
}
