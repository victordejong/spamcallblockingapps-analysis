package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakw.class */
public final class zzakw {
    private final zzaku zza;
    private boolean zzb;

    public zzakw() {
        throw null;
    }

    public zzakw(zzaku zzakuVar) {
        this.zza = zzakuVar;
    }

    public final boolean zza() {
        synchronized (this) {
            if (this.zzb) {
                return false;
            }
            this.zzb = true;
            notifyAll();
            return true;
        }
    }

    public final boolean zzb() {
        boolean z;
        synchronized (this) {
            z = this.zzb;
            this.zzb = false;
        }
        return z;
    }

    public final void zzc() throws InterruptedException {
        synchronized (this) {
            while (!this.zzb) {
                wait();
            }
        }
    }

    public final void zzd() {
        synchronized (this) {
            boolean z = false;
            while (!this.zzb) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    z = true;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public final boolean zze() {
        boolean z;
        synchronized (this) {
            z = this.zzb;
        }
        return z;
    }
}
