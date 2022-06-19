package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC12102f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cot.class */
public final class cot {

    /* renamed from: a */
    private final AbstractC12102f f46214a;

    /* renamed from: b */
    private final Object f46215b = new Object();

    /* renamed from: c */
    private volatile int f46216c = cow.f46280a;

    /* renamed from: d */
    private volatile long f46217d = 0;

    public cot(AbstractC12102f abstractC12102f) {
        this.f46214a = abstractC12102f;
    }

    /* renamed from: c */
    private final void m17368c() {
        long mo19039a = this.f46214a.mo19039a();
        synchronized (this.f46215b) {
            if (this.f46216c == cow.f46282c) {
                if (this.f46217d + ((Long) ekb.m14831e().m18571a(C12187aq.f42797dA)).longValue() <= mo19039a) {
                    this.f46216c = cow.f46280a;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m17370a(int i, int i2) {
        m17368c();
        long mo19039a = this.f46214a.mo19039a();
        synchronized (this.f46215b) {
            if (this.f46216c != i) {
                return;
            }
            this.f46216c = i2;
            if (this.f46216c == cow.f46282c) {
                this.f46217d = mo19039a;
            }
        }
    }

    /* renamed from: a */
    public final boolean m17371a() {
        boolean z;
        synchronized (this.f46215b) {
            m17368c();
            z = this.f46216c == cow.f46281b;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m17369b() {
        boolean z;
        synchronized (this.f46215b) {
            m17368c();
            z = this.f46216c == cow.f46282c;
        }
        return z;
    }
}
