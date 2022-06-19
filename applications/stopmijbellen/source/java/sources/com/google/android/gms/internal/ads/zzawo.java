package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawo.class */
public final class zzawo {
    private boolean zza;

    public final void zza() throws InterruptedException {
        synchronized (this) {
            while (!this.zza) {
                wait();
            }
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

    public final boolean zzc() {
        synchronized (this) {
            if (this.zza) {
                return false;
            }
            this.zza = true;
            notifyAll();
            return true;
        }
    }
}
