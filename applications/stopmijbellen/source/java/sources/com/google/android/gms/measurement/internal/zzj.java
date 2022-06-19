package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzcf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzj.class */
final class zzj implements Runnable {
    public final /* synthetic */ zzcf zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ boolean zzd;
    public final /* synthetic */ AppMeasurementDynamiteService zze;

    public zzj(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar, String str, String str2, boolean z) {
        this.zze = appMeasurementDynamiteService;
        this.zza = zzcfVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zza.zzy().zzr(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
