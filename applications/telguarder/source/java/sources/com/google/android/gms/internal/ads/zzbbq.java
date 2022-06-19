package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbq.class */
public final class zzbbq implements Runnable {
    private boolean zzbsx = false;
    private zzbax zzekr;

    public zzbbq(zzbax zzbaxVar) {
        this.zzekr = zzbaxVar;
    }

    private final void zzabo() {
        zzj.zzeen.removeCallbacks(this);
        zzj.zzeen.postDelayed(this, 250L);
    }

    public final void pause() {
        this.zzbsx = true;
        this.zzekr.zzaas();
    }

    public final void resume() {
        this.zzbsx = false;
        zzabo();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.zzbsx) {
            this.zzekr.zzaas();
            zzabo();
        }
    }
}
