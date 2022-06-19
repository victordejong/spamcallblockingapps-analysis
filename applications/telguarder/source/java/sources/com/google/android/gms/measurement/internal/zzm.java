package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzs;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzm.class */
final class zzm implements Runnable {
    final /* synthetic */ zzs zza;
    final /* synthetic */ AppMeasurementDynamiteService zzb;

    public zzm(AppMeasurementDynamiteService appMeasurementDynamiteService, zzs zzsVar) {
        this.zzb = appMeasurementDynamiteService;
        this.zza = zzsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzl().zzah(this.zza, this.zzb.zza.zzE());
    }
}
