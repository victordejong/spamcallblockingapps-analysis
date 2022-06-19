package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vh2.class */
final class vh2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ MotionEvent f8913b;

    vh2(xh2 xh2Var, MotionEvent motionEvent) {
        this.f8913b = motionEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            xh2.t().a(this.f8913b);
        } catch (Exception e) {
            xh2.u().m7589d(2022, -1L, e);
        }
    }
}
