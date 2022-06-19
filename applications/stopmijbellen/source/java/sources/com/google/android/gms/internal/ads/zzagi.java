package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagi.class */
public final class zzagi implements Runnable {
    private final zzags zza;
    private final zzagy zzb;
    private final Runnable zzc;

    public zzagi(zzags zzagsVar, zzagy zzagyVar, Runnable runnable) {
        this.zza = zzagsVar;
        this.zzb = zzagyVar;
        this.zzc = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzw();
        if (this.zzb.zzc()) {
            this.zza.zzo(this.zzb.zza);
        } else {
            this.zza.zzn(this.zzb.zzc);
        }
        if (this.zzb.zzd) {
            this.zza.zzm("intermediate-response");
        } else {
            this.zza.zzp("done");
        }
        Runnable runnable = this.zzc;
        if (runnable != null) {
            runnable.run();
        }
    }
}
