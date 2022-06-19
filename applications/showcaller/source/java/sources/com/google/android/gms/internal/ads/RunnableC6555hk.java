package com.google.android.gms.internal.ads;

import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.hk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hk.class */
final class RunnableC6555hk implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C6593ik f23932d;

    public RunnableC6555hk(C6593ik c6593ik) {
        this.f23932d = c6593ik;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List<AbstractC6630jk> list;
        obj = this.f23932d.f24305f;
        synchronized (obj) {
            z = this.f23932d.f24306g;
            if (z) {
                z2 = this.f23932d.f24307h;
                if (z2) {
                    this.f23932d.f24306g = false;
                    ei0.m15469a("App went background");
                    list = this.f23932d.f24308i;
                    for (AbstractC6630jk abstractC6630jk : list) {
                        try {
                            abstractC6630jk.mo9939b(false);
                        } catch (Exception e) {
                            ei0.m15466d("", e);
                        }
                    }
                }
            }
            ei0.m15469a("App is still foreground");
        }
    }
}
