package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzk.class */
final class zzk implements Runnable {
    private final /* synthetic */ zzn zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ boolean zzd;
    private final /* synthetic */ AppMeasurementDynamiteService zze;

    public zzk(AppMeasurementDynamiteService appMeasurementDynamiteService, zzn zznVar, String str, String str2, boolean z) {
        this.zze = appMeasurementDynamiteService;
        this.zza = zznVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zza.zzw().zza(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
