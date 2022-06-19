package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcm.class */
public final class bcm {

    /* renamed from: a */
    private AbstractC12389dq f43553a;

    public bcm(bcd bcdVar) {
        this.f43553a = bcdVar;
    }

    /* renamed from: a */
    public final AbstractC12389dq m18206a() {
        AbstractC12389dq abstractC12389dq;
        synchronized (this) {
            abstractC12389dq = this.f43553a;
        }
        return abstractC12389dq;
    }

    /* renamed from: a */
    public final void m18205a(AbstractC12389dq abstractC12389dq) {
        synchronized (this) {
            this.f43553a = abstractC12389dq;
        }
    }
}
