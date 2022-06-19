package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeb.class */
public final class zzeb {
    private final zzdz zza;
    private boolean zzb;

    public zzeb() {
        throw null;
    }

    public zzeb(zzdz zzdzVar) {
        this.zza = zzdzVar;
    }

    public final void zza() throws InterruptedException {
        synchronized (this) {
            while (!this.zzb) {
                wait();
            }
        }
    }

    public final void zzb() {
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

    public final boolean zzc() {
        boolean z;
        synchronized (this) {
            z = this.zzb;
            this.zzb = false;
        }
        return z;
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this) {
            z = this.zzb;
        }
        return z;
    }

    public final boolean zze() {
        synchronized (this) {
            if (this.zzb) {
                return false;
            }
            this.zzb = true;
            notifyAll();
            return true;
        }
    }
}
