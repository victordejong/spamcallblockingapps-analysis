package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzh.class */
final class zzh implements Runnable {
    private final /* synthetic */ zzn zza;
    private final /* synthetic */ zzan zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ AppMeasurementDynamiteService zzd;

    public zzh(AppMeasurementDynamiteService appMeasurementDynamiteService, zzn zznVar, zzan zzanVar, String str) {
        this.zzd = appMeasurementDynamiteService;
        this.zza = zznVar;
        this.zzb = zzanVar;
        this.zzc = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza.zzw().zza(this.zza, this.zzb, this.zzc);
    }
}
