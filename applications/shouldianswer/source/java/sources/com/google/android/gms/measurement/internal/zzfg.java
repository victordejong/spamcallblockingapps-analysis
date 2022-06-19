package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfg.class */
final class zzfg implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ zzfd zzb;

    public zzfg(zzfd zzfdVar, boolean z) {
        this.zzb = zzfdVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzke zzkeVar;
        zzkeVar = this.zzb.zzb;
        zzkeVar.zza(this.zza);
    }
}
