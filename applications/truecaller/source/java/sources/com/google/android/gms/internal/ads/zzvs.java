package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvs.class */
public final class zzvs implements Runnable {
    private final zzwc zza;
    private final zzwi zzb;
    private final Runnable zzc;

    public zzvs(zzwc zzwcVar, zzwi zzwiVar, Runnable runnable) {
        this.zza = zzwcVar;
        this.zzb = zzwiVar;
        this.zzc = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzm();
        if (this.zzb.zzc()) {
            this.zza.zzt(this.zzb.zza);
        } else {
            this.zza.zzu(this.zzb.zzc);
        }
        if (this.zzb.zzd) {
            this.zza.zzd("intermediate-response");
        } else {
            this.zza.zze("done");
        }
        Runnable runnable = this.zzc;
        if (runnable != null) {
            runnable.run();
        }
    }
}
