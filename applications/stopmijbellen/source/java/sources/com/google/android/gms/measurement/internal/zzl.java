package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzcf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzl.class */
final class zzl implements Runnable {
    public final /* synthetic */ zzcf zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ AppMeasurementDynamiteService zzd;

    public zzl(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar, String str, String str2) {
        this.zzd = appMeasurementDynamiteService;
        this.zza = zzcfVar;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza.zzy().zzo(this.zza, this.zzb, this.zzc);
    }
}
