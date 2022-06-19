package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzak.class */
public final class zzak implements Runnable {
    final /* synthetic */ zzgg zza;
    final /* synthetic */ zzal zzb;

    public zzak(zzal zzalVar, zzgg zzggVar) {
        this.zzb = zzalVar;
        this.zza = zzggVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzas();
        if (zzz.zza()) {
            this.zza.zzau().zzh(this);
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
