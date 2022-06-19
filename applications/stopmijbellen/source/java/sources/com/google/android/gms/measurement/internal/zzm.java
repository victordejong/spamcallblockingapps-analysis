package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzcf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzm.class */
final class zzm implements Runnable {
    public final /* synthetic */ zzcf zza;
    public final /* synthetic */ AppMeasurementDynamiteService zzb;

    public zzm(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar) {
        this.zzb = appMeasurementDynamiteService;
        this.zza = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzl().zzah(this.zza, this.zzb.zza.zzE());
    }
}
