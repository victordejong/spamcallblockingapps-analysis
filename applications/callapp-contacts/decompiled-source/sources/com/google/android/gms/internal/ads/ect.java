package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ect.class */
public final class ect {

    /* renamed from: a  reason: collision with root package name */
    private boolean f27640a;

    public final boolean a() {
        synchronized (this) {
            if (this.f27640a) {
                return false;
            }
            this.f27640a = true;
            notifyAll();
            return true;
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (this) {
            z = this.f27640a;
            this.f27640a = false;
        }
        return z;
    }

    public final void c() throws InterruptedException {
        synchronized (this) {
            while (!this.f27640a) {
                wait();
            }
        }
    }
}
