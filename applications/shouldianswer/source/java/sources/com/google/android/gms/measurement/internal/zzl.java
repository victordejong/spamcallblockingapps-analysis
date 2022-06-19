package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzl.class */
final class zzl implements Runnable {
    private final /* synthetic */ zzn zza;
    private final /* synthetic */ AppMeasurementDynamiteService zzb;

    public zzl(AppMeasurementDynamiteService appMeasurementDynamiteService, zzn zznVar) {
        this.zzb = appMeasurementDynamiteService;
        this.zza = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzi().zza(this.zza, this.zzb.zza.zzaa());
    }
}
