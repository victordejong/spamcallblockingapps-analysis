package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.yn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yn.class */
public final class C2055yn {

    /* renamed from: a */
    private final Object f9229a = new Object();

    /* renamed from: c */
    private volatile int f9231c = 1;

    /* renamed from: b */
    private volatile long f9230b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2055yn(xn xnVar) {
    }

    /* renamed from: a */
    public final void m4729a() {
        long a = C1407r.m8913k().m8247a();
        synchronized (this.f9229a) {
            if (this.f9231c == 3) {
                if (this.f9230b + ((Long) C1674c.m7906c().m6878b(C1842m3.f7220B3)).longValue() <= a) {
                    this.f9231c = 1;
                }
            }
        }
        long a2 = C1407r.m8913k().m8247a();
        synchronized (this.f9229a) {
            if (this.f9231c == 2) {
                this.f9231c = 3;
                if (this.f9231c == 3) {
                    this.f9230b = a2;
                }
            }
        }
    }
}
