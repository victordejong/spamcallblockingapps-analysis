package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzgs.class */
final class zzgs implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzhn zzb;

    public zzgs(zzhn zzhnVar, long j) {
        this.zzb = zzhnVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzx.zzd().zzk.zzb(this.zza);
        this.zzb.zzx.zzat().zzj().zzb("Session timeout duration set", Long.valueOf(this.zza));
    }
}
