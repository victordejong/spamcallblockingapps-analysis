package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzji.class */
final class zzji implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzjq zzb;

    public zzji(zzjq zzjqVar, long j) {
        this.zzb = zzjqVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjq.zzh(this.zzb, this.zza);
    }
}
