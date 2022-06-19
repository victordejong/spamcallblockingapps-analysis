package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjs.class */
final class zzjs implements Runnable {
    public final /* synthetic */ long zza;
    public final /* synthetic */ zzjz zzb;

    public zzjs(zzjz zzjzVar, long j) {
        this.zzb = zzjzVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjz.zzi(this.zzb, this.zza);
    }
}
