package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjr.class */
final class zzjr implements Runnable {
    public final /* synthetic */ long zza;
    public final /* synthetic */ zzjz zzb;

    public zzjr(zzjz zzjzVar, long j) {
        this.zzb = zzjzVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjz.zzh(this.zzb, this.zza);
    }
}
