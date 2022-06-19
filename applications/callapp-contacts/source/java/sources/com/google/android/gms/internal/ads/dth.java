package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dth.class */
public final class dth implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f47564a;

    /* renamed from: b */
    private final /* synthetic */ boolean f47565b;

    /* renamed from: c */
    private final /* synthetic */ dtg f47566c;

    public dth(dtg dtgVar, int i, boolean z) {
        this.f47566c = dtgVar;
        this.f47564a = i;
        this.f47565b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        beb.C12217a m15729b = this.f47566c.m15729b(this.f47564a, this.f47565b);
        this.f47566c.f47552f = m15729b;
        if (dtg.m15740a(this.f47564a, m15729b)) {
            this.f47566c.m15739a(this.f47564a + 1, this.f47565b);
        }
    }
}
