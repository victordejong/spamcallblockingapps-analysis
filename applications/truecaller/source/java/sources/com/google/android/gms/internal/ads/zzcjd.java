package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzs;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcjd.class */
public final class zzcjd implements Runnable {
    private final zzcip zza;
    private boolean zzb = false;

    public zzcjd(zzcip zzcipVar) {
        this.zza = zzcipVar;
    }

    private final void zzc() {
        zzfla zzflaVar = zzs.zza;
        zzflaVar.removeCallbacks(this);
        zzflaVar.postDelayed(this, 250L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.zzb) {
            this.zza.zzE();
            zzc();
        }
    }

    public final void zza() {
        this.zzb = true;
        this.zza.zzE();
    }

    public final void zzb() {
        this.zzb = false;
        zzc();
    }
}
