package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzhy.class */
public final class zzhy implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzib zzb;

    public zzhy(zzib zzibVar, long j) {
        this.zzb = zzibVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzx.zzB().zzc(this.zza);
        this.zzb.zza = null;
    }
}
