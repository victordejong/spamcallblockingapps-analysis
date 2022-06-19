package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkd.class */
public final class zzkd implements Runnable {
    private final /* synthetic */ zzkj zza;
    private final /* synthetic */ zzke zzb;

    public zzkd(zzke zzkeVar, zzkj zzkjVar) {
        this.zzb = zzkeVar;
        this.zza = zzkjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza(this.zza);
        this.zzb.zza();
    }
}
