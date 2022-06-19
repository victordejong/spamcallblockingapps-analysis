package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ei */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ei.class */
public final class C6442ei {

    /* renamed from: a */
    private boolean f22180a;

    /* renamed from: a */
    public final boolean m15472a() {
        synchronized (this) {
            if (this.f22180a) {
                return false;
            }
            this.f22180a = true;
            notifyAll();
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m15471b() {
        boolean z;
        synchronized (this) {
            z = this.f22180a;
            this.f22180a = false;
        }
        return z;
    }

    /* renamed from: c */
    public final void m15470c() {
        synchronized (this) {
            while (!this.f22180a) {
                wait();
            }
        }
    }
}
