package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ot2.class */
final class ot2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ qt2 f7903b;

    public ot2(qt2 qt2Var) {
        this.f7903b = qt2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List<rt2> list;
        obj = this.f7903b.f8271d;
        synchronized (obj) {
            try {
                z = this.f7903b.f8272e;
                if (z) {
                    z2 = this.f7903b.f8273f;
                    if (z2) {
                        this.f7903b.f8272e = false;
                        C1894po.m6185a("App went background");
                        list = this.f7903b.f8274g;
                        for (rt2 rt2Var : list) {
                            try {
                                rt2Var.m5860b(false);
                            } catch (Exception e) {
                                C1894po.m6182d("", e);
                            }
                        }
                    }
                }
                C1894po.m6185a("App is still foreground");
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
