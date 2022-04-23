package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rh2.class */
final class rh2 implements Runnable {
    rh2() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            xh2.t().k();
            xh2.t().l();
        } catch (Exception e) {
            xh2.u().m7589d(2001, -1L, e);
        }
    }
}
