package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzje.class */
final class zzje implements Runnable {
    private final /* synthetic */ zzeo zza;
    private final /* synthetic */ zzjb zzb;

    public zzje(zzjb zzjbVar, zzeo zzeoVar) {
        this.zzb = zzjbVar;
        this.zza = zzeoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb) {
            this.zzb.zzb = false;
            if (!this.zzb.zza.zzab()) {
                this.zzb.zza.zzr().zzx().zza("Connected to service");
                this.zzb.zza.zza(this.zza);
            }
        }
    }
}
