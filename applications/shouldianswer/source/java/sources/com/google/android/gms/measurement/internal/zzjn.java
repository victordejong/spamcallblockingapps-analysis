package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjn.class */
public final class zzjn implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zzjo zzb;

    public zzjn(zzjo zzjoVar, long j) {
        this.zzb = zzjoVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza(this.zza);
    }
}
