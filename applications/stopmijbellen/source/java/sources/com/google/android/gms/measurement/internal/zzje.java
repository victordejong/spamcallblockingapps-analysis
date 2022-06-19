package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzje.class */
final class zzje implements Runnable {
    public final /* synthetic */ zzed zza;
    public final /* synthetic */ zzjj zzb;

    public zzje(zzjj zzjjVar, zzed zzedVar) {
        this.zzb = zzjjVar;
        this.zza = zzedVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb) {
            this.zzb.zzb = false;
            if (!this.zzb.zza.zzh()) {
                this.zzb.zza.zzs.zzau().zzk().zza("Connected to service");
                this.zzb.zza.zzE(this.zza);
            }
        }
    }
}
