package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fa0.class */
final class fa0 implements Runnable {

    /* renamed from: b */
    private final WeakReference<ga0> f6483b;

    /* synthetic */ fa0(ga0 ga0Var, ea0 ea0Var) {
        this.f6483b = new WeakReference<>(ga0Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ga0 ga0Var = this.f6483b.get();
        if (ga0Var != null) {
            ga0Var.m5532B0(da0.a);
        }
    }
}
