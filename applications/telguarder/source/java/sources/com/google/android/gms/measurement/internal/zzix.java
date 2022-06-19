package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzix.class */
final class zzix implements Runnable {
    final /* synthetic */ zzdz zza;
    final /* synthetic */ zzja zzb;

    public zzix(zzja zzjaVar, zzdz zzdzVar) {
        this.zzb = zzjaVar;
        this.zza = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb) {
            this.zzb.zzb = false;
            if (!this.zzb.zza.zzh()) {
                this.zzb.zza.zzx.zzat().zzj().zza("Connected to remote service");
                this.zzb.zza.zzE(this.zza);
            }
        }
    }
}
