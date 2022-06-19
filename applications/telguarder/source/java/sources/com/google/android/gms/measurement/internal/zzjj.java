package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjj.class */
final class zzjj implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzjq zzb;

    public zzjj(zzjq zzjqVar, long j) {
        this.zzb = zzjqVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjq.zzi(this.zzb, this.zza);
    }
}
