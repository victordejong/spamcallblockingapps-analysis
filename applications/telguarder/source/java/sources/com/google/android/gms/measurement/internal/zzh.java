package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzs;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzh.class */
final class zzh implements Runnable {
    final /* synthetic */ zzs zza;
    final /* synthetic */ AppMeasurementDynamiteService zzb;

    public zzh(AppMeasurementDynamiteService appMeasurementDynamiteService, zzs zzsVar) {
        this.zzb = appMeasurementDynamiteService;
        this.zza = zzsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzy().zzx(this.zza);
    }
}
