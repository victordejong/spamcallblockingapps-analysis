package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzs;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzj.class */
final class zzj implements Runnable {
    final /* synthetic */ zzs zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ AppMeasurementDynamiteService zze;

    public zzj(AppMeasurementDynamiteService appMeasurementDynamiteService, zzs zzsVar, String str, String str2, boolean z) {
        this.zze = appMeasurementDynamiteService;
        this.zza = zzsVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zza.zzy().zzr(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
