package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dio.class */
public final class dio implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f14427a;

    /* renamed from: b */
    private final /* synthetic */ boolean f14428b;

    /* renamed from: c */
    private final /* synthetic */ din f14429c;

    public dio(din dinVar, int i, boolean z) {
        this.f14429c = dinVar;
        this.f14427a = i;
        this.f14428b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean m9410b;
        atw.C2798a m9409b = this.f14429c.m9409b(this.f14427a, this.f14428b);
        this.f14429c.f14419k = m9409b;
        m9410b = din.m9410b(this.f14427a, m9409b);
        if (m9410b) {
            this.f14429c.m9420a(this.f14427a + 1, this.f14428b);
        }
    }
}
