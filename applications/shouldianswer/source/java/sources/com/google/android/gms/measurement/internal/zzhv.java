package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhv.class */
public final class zzhv implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zzhb zzb;

    public zzhv(zzhb zzhbVar, long j) {
        this.zzb = zzhbVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzs().zzl.zza(this.zza);
        this.zzb.zzr().zzw().zza("Session timeout duration set", Long.valueOf(this.zza));
    }
}
