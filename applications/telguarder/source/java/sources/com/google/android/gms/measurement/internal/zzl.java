package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzs;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzl.class */
final class zzl implements Runnable {
    final /* synthetic */ zzs zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ AppMeasurementDynamiteService zzd;

    public zzl(AppMeasurementDynamiteService appMeasurementDynamiteService, zzs zzsVar, String str, String str2) {
        this.zzd = appMeasurementDynamiteService;
        this.zza = zzsVar;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza.zzy().zzo(this.zza, this.zzb, this.zzc);
    }
}
