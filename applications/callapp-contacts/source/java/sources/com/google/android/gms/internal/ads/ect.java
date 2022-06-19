package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ect.class */
public final class ect {

    /* renamed from: a */
    private boolean f48709a;

    /* renamed from: a */
    public final boolean m15243a() {
        synchronized (this) {
            if (this.f48709a) {
                return false;
            }
            this.f48709a = true;
            notifyAll();
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m15242b() {
        boolean z;
        synchronized (this) {
            z = this.f48709a;
            this.f48709a = false;
        }
        return z;
    }

    /* renamed from: c */
    public final void m15241c() throws InterruptedException {
        synchronized (this) {
            while (!this.f48709a) {
                wait();
            }
        }
    }
}
