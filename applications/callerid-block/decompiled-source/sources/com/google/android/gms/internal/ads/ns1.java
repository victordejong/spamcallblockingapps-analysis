package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ns1.class */
final class ns1 implements Runnable {
    ns1() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (qs1.h() != null) {
            qs1.h().post(qs1.i());
            qs1.h().postDelayed(qs1.j(), 200L);
        }
    }
}
