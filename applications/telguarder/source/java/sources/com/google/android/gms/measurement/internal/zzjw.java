package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjw.class */
public final class zzjw implements Runnable {
    final /* synthetic */ zzke zza;
    final /* synthetic */ zzkd zzb;

    public zzjw(zzkd zzkdVar, zzke zzkeVar) {
        this.zzb = zzkdVar;
        this.zza = zzkeVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkd.zzaa(this.zzb, this.zza);
        this.zzb.zzc();
    }
}
