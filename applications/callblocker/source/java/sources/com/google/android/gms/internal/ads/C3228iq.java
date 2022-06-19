package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.iq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/iq.class */
public final class C3228iq extends C3665yv<AbstractC3241jc> {

    /* renamed from: a */
    private final Object f16780a = new Object();

    /* renamed from: b */
    private final C3232iu f16781b;

    /* renamed from: c */
    private boolean f16782c;

    public C3228iq(C3232iu c3232iu) {
        this.f16781b = c3232iu;
    }

    /* renamed from: a */
    public final void m7751a() {
        synchronized (this.f16780a) {
            if (this.f16782c) {
                return;
            }
            this.f16782c = true;
            m6726a(new C3231it(this), new C3663yt());
            m6726a(new C3230is(this), new C3233iv(this));
        }
    }
}
