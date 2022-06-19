package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsb.class */
public final class dsb {

    /* renamed from: a */
    private boolean f15541a;

    /* renamed from: a */
    public final boolean m8764a() {
        boolean z = true;
        synchronized (this) {
            if (this.f15541a) {
                z = false;
            } else {
                this.f15541a = true;
                notifyAll();
            }
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m8763b() {
        boolean z;
        synchronized (this) {
            z = this.f15541a;
            this.f15541a = false;
        }
        return z;
    }

    /* renamed from: c */
    public final void m8762c() {
        synchronized (this) {
            while (!this.f15541a) {
                wait();
            }
        }
    }
}
