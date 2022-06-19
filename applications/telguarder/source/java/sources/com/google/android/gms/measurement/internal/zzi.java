package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzs;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzi.class */
final class zzi implements Runnable {
    final /* synthetic */ zzs zza;
    final /* synthetic */ zzas zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ AppMeasurementDynamiteService zzd;

    public zzi(AppMeasurementDynamiteService appMeasurementDynamiteService, zzs zzsVar, zzas zzasVar, String str) {
        this.zzd = appMeasurementDynamiteService;
        this.zza = zzsVar;
        this.zzb = zzasVar;
        this.zzc = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza.zzy().zzG(this.zza, this.zzb, this.zzc);
    }
}
