package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzai.class */
public final class zzai implements Runnable {
    private final /* synthetic */ zzgt zza;
    private final /* synthetic */ zzaf zzb;

    public zzai(zzaf zzafVar, zzgt zzgtVar) {
        this.zzb = zzafVar;
        this.zza = zzgtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzu();
        if (zzw.zza()) {
            this.zza.zzq().zza(this);
            return;
        }
        boolean zzb = this.zzb.zzb();
        this.zzb.zzd = 0L;
        if (!zzb) {
            return;
        }
        this.zzb.zza();
    }
}
