package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzcf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzi.class */
final class zzi implements Runnable {
    public final /* synthetic */ zzcf zza;
    public final /* synthetic */ zzas zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ AppMeasurementDynamiteService zzd;

    public zzi(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar, zzas zzasVar, String str) {
        this.zzd = appMeasurementDynamiteService;
        this.zza = zzcfVar;
        this.zzb = zzasVar;
        this.zzc = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza.zzy().zzG(this.zza, this.zzb, this.zzc);
    }
}
