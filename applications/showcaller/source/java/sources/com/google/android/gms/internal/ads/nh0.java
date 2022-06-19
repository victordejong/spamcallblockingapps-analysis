package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nh0.class */
public final class nh0 {

    /* renamed from: a */
    private final Object f27144a = new Object();

    /* renamed from: c */
    private volatile int f27146c = 1;

    /* renamed from: b */
    private volatile long f27145b = 0;

    public /* synthetic */ nh0(oh0 oh0Var) {
    }

    /* renamed from: a */
    public final void m12899a() {
        long mo16807a = C5667s.m18153k().mo16807a();
        synchronized (this.f27144a) {
            if (this.f27146c == 3) {
                if (this.f27145b + ((Long) C7192yr.m8714c().m14263c(C6679kw.f25739l4)).longValue() <= mo16807a) {
                    this.f27146c = 1;
                }
            }
        }
        long mo16807a2 = C5667s.m18153k().mo16807a();
        synchronized (this.f27144a) {
            if (this.f27146c != 2) {
                return;
            }
            this.f27146c = 3;
            if (this.f27146c == 3) {
                this.f27145b = mo16807a2;
            }
        }
    }
}
