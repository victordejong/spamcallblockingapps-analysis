package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzak.class */
public final class zzak implements Runnable {
    public final /* synthetic */ zzgp zza;
    public final /* synthetic */ zzal zzb;

    public zzak(zzal zzalVar, zzgp zzgpVar) {
        this.zzb = zzalVar;
        this.zza = zzgpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzat();
        if (zzz.zza()) {
            this.zza.zzav().zzh(this);
            return;
        }
        boolean zzc = this.zzb.zzc();
        this.zzb.zzd = 0L;
        if (!zzc) {
            return;
        }
        this.zzb.zza();
    }
}
