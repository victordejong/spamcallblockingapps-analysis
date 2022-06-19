package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hc2.class */
final class hc2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ cd2 f6737b;

    hc2(cd2 cd2Var) {
        this.f6737b = cd2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (cd2.n(this.f6737b)) {
            if (!cd2.o(this.f6737b)) {
                cd2.p(this.f6737b, true);
                try {
                    cd2.q(this.f6737b);
                } catch (Exception e) {
                    cd2.r(this.f6737b).m7589d(2023, -1L, e);
                }
                synchronized (cd2.n(this.f6737b)) {
                    cd2.p(this.f6737b, false);
                }
            }
        }
    }
}
