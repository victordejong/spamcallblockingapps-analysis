package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpu.class */
public final class zzbpu {
    private boolean zza = false;
    private boolean zzb = false;
    private float zzc = 0.0f;
    private final AtomicBoolean zzd = new AtomicBoolean(false);

    public final void zza(boolean z) {
        synchronized (this) {
            this.zza = z;
            this.zzd.set(true);
        }
    }

    public final void zzb(boolean z, float f) {
        synchronized (this) {
            this.zzb = z;
            this.zzc = f;
        }
    }

    public final boolean zzc(boolean z) {
        synchronized (this) {
            if (this.zzd.get()) {
                return this.zza;
            }
            return z;
        }
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this) {
            z = this.zzb;
        }
        return z;
    }

    public final float zze() {
        float f;
        synchronized (this) {
            f = this.zzc;
        }
        return f;
    }
}
