package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkh.class */
public final class zzkh implements Callable<String> {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ zzke zzb;

    public zzkh(zzke zzkeVar, zzm zzmVar) {
        this.zzb = zzkeVar;
        this.zza = zzmVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        zzg zzc = this.zzb.zzc(this.zza);
        if (zzc == null) {
            this.zzb.zzr().zzi().zza("App info was null when attempting to get app instance id");
            return null;
        }
        return zzc.zzd();
    }
}
