package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaur.class */
public final class zzaur {
    private boolean zza;

    public final boolean zza() {
        synchronized (this) {
            if (this.zza) {
                return false;
            }
            this.zza = true;
            notifyAll();
            return true;
        }
    }

    public final boolean zzb() {
        boolean z;
        synchronized (this) {
            z = this.zza;
            this.zza = false;
        }
        return z;
    }

    public final void zzc() throws InterruptedException {
        synchronized (this) {
            while (!this.zza) {
                wait();
            }
        }
    }
}
