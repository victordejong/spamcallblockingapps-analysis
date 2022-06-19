package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclj.class */
public final class zzclj implements Runnable {
    private final zzckv zza;
    private boolean zzb = false;

    public zzclj(zzckv zzckvVar) {
        this.zza = zzckvVar;
    }

    private final void zzc() {
        zzfpj zzfpjVar = zzt.zza;
        zzfpjVar.removeCallbacks(this);
        zzfpjVar.postDelayed(this, 250L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.zzb) {
            this.zza.zzr();
            zzc();
        }
    }

    public final void zza() {
        this.zzb = true;
        this.zza.zzr();
    }

    public final void zzb() {
        this.zzb = false;
        zzc();
    }
}
