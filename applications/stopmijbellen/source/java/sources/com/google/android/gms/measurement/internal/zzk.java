package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzk.class */
final class zzk implements Runnable {
    public final /* synthetic */ zzn zza;
    public final /* synthetic */ AppMeasurementDynamiteService zzb;

    public zzk(AppMeasurementDynamiteService appMeasurementDynamiteService, zzn zznVar) {
        this.zzb = appMeasurementDynamiteService;
        this.zza = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzk().zzI(this.zza);
    }
}
