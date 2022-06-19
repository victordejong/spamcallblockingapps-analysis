package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpi.class */
public final class zzpi {
    private boolean isOpen;

    public final void block() throws InterruptedException {
        synchronized (this) {
            while (!this.isOpen) {
                wait();
            }
        }
    }

    public final boolean open() {
        synchronized (this) {
            if (this.isOpen) {
                return false;
            }
            this.isOpen = true;
            notifyAll();
            return true;
        }
    }

    public final boolean zziu() {
        boolean z;
        synchronized (this) {
            z = this.isOpen;
            this.isOpen = false;
        }
        return z;
    }
}
