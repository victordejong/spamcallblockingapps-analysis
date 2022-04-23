package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wh2.class */
final class wh2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ int f9011b;

    /* renamed from: c */
    final /* synthetic */ int f9012c;

    /* renamed from: d */
    final /* synthetic */ int f9013d;

    wh2(xh2 xh2Var, int i, int i2, int i3) {
        this.f9011b = i;
        this.f9012c = i2;
        this.f9013d = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            xh2.t().a(MotionEvent.obtain(0L, this.f9011b, 0, this.f9012c, this.f9013d, 0));
        } catch (Exception e) {
            xh2.u().m7589d(2022, -1L, e);
        }
    }
}
