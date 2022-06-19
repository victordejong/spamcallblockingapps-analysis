package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import com.google.android.gms.ads.internal.util.zzj;
import java.util.concurrent.TimeUnit;
@TargetApi(14)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbf.class */
public final class zzbbf {
    private long zzeku;
    private final long zzekt = TimeUnit.MILLISECONDS.toNanos(((Long) zzwr.zzqr().zzd(zzabp.zzcng)).longValue());
    private boolean zzekv = true;

    public final void zza(SurfaceTexture surfaceTexture, zzbaw zzbawVar) {
        if (zzbawVar == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (!this.zzekv && Math.abs(timestamp - this.zzeku) < this.zzekt) {
            return;
        }
        this.zzekv = false;
        this.zzeku = timestamp;
        zzj.zzeen.post(new zzbbi(this, zzbawVar));
    }

    public final void zzaal() {
        this.zzekv = true;
    }
}
