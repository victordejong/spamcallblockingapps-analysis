package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrw.class */
public final class zzbrw {
    private boolean zza = false;
    private boolean zzb = false;
    private float zzc = 0.0f;
    private final AtomicBoolean zzd = new AtomicBoolean(false);

    public final float zza() {
        float f;
        synchronized (this) {
            f = this.zzc;
        }
        return f;
    }

    public final void zzb(boolean z, float f) {
        synchronized (this) {
            this.zzb = z;
            this.zzc = f;
        }
    }

    public final void zzc(boolean z) {
        synchronized (this) {
            this.zza = z;
            this.zzd.set(true);
        }
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this) {
            z = this.zzb;
        }
        return z;
    }

    public final boolean zze(boolean z) {
        synchronized (this) {
            if (this.zzd.get()) {
                return this.zza;
            }
            return z;
        }
    }
}
