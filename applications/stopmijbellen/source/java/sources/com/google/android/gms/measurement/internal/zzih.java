package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzih.class */
public final class zzih implements Runnable {
    public final /* synthetic */ long zza;
    public final /* synthetic */ zzik zzb;

    public zzih(zzik zzikVar, long j) {
        this.zzb = zzikVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzs.zzB().zzc(this.zza);
        this.zzb.zza = null;
    }
}
