package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzcf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzh.class */
final class zzh implements Runnable {
    public final /* synthetic */ zzcf zza;
    public final /* synthetic */ AppMeasurementDynamiteService zzb;

    public zzh(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar) {
        this.zzb = appMeasurementDynamiteService;
        this.zza = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzy().zzx(this.zza);
    }
}
