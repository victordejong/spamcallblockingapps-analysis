package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import com.google.android.gms.ads.internal.util.zzt;
import java.util.concurrent.TimeUnit;
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclb.class */
public final class zzclb {
    private long zzb;
    private final long zza = TimeUnit.MILLISECONDS.toNanos(((Long) zzbgq.zzc().zzb(zzblj.zzy)).longValue());
    private boolean zzc = true;

    public final void zza(SurfaceTexture surfaceTexture, zzckn zzcknVar) {
        if (zzcknVar == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (!this.zzc && Math.abs(timestamp - this.zzb) < this.zza) {
            return;
        }
        this.zzc = false;
        this.zzb = timestamp;
        zzt.zza.post(new zzcla(this, zzcknVar));
    }

    public final void zzb() {
        this.zzc = true;
    }
}
