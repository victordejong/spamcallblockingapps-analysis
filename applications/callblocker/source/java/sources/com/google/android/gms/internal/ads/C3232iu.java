package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.internal.ads.iu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/iu.class */
public final class C3232iu extends C3665yv<AbstractC3200hp> {

    /* renamed from: b */
    private AbstractC3599wj<AbstractC3200hp> f16785b;

    /* renamed from: a */
    private final Object f16784a = new Object();

    /* renamed from: c */
    private boolean f16786c = false;

    /* renamed from: d */
    private int f16787d = 0;

    public C3232iu(AbstractC3599wj<AbstractC3200hp> abstractC3599wj) {
        this.f16785b = abstractC3599wj;
    }

    /* renamed from: f */
    private final void m7745f() {
        synchronized (this.f16784a) {
            C2662s.m13977a(this.f16787d >= 0);
            if (!this.f16786c || this.f16787d != 0) {
                C3556uu.m7052a("There are still references to the engine. Not destroying.");
            } else {
                C3556uu.m7052a("No reference is left (including root). Cleaning up engine.");
                m6726a(new C3239ja(this), new C3663yt());
            }
        }
    }

    /* renamed from: a */
    public final C3228iq m7749a() {
        C3228iq c3228iq = new C3228iq(this);
        synchronized (this.f16784a) {
            m6726a(new C3235ix(this, c3228iq), new C3234iw(this, c3228iq));
            C2662s.m13977a(this.f16787d >= 0);
            this.f16787d++;
        }
        return c3228iq;
    }

    /* renamed from: b */
    public final void m7747b() {
        synchronized (this.f16784a) {
            C2662s.m13977a(this.f16787d > 0);
            C3556uu.m7052a("Releasing 1 reference for JS Engine");
            this.f16787d--;
            m7745f();
        }
    }

    /* renamed from: c */
    public final void m7746c() {
        boolean z = true;
        synchronized (this.f16784a) {
            if (this.f16787d < 0) {
                z = false;
            }
            C2662s.m13977a(z);
            C3556uu.m7052a("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f16786c = true;
            m7745f();
        }
    }
}
