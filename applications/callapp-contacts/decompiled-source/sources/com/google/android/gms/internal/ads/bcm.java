package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcm.class */
public final class bcm {

    /* renamed from: a  reason: collision with root package name */
    private dq f24173a;

    public bcm(bcd bcdVar) {
        this.f24173a = bcdVar;
    }

    public final dq a() {
        dq dqVar;
        synchronized (this) {
            dqVar = this.f24173a;
        }
        return dqVar;
    }

    public final void a(dq dqVar) {
        synchronized (this) {
            this.f24173a = dqVar;
        }
    }
}
