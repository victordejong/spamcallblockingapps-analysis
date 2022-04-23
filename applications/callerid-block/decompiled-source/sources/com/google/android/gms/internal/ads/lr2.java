package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lr2.class */
public final class lr2 {

    /* renamed from: a */
    private boolean f7144a;

    /* renamed from: a */
    public final boolean m6669a() {
        synchronized (this) {
            if (this.f7144a) {
                return false;
            }
            this.f7144a = true;
            notifyAll();
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m6668b() {
        boolean z;
        synchronized (this) {
            z = this.f7144a;
            this.f7144a = false;
        }
        return z;
    }

    /* renamed from: c */
    public final void m6667c() {
        synchronized (this) {
            while (!this.f7144a) {
                wait();
            }
        }
    }
}
