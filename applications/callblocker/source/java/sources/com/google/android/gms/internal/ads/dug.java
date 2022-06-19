package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dug.class */
final class dug implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ duh f15779a;

    public dug(duh duhVar) {
        this.f15779a = duhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List<duj> list;
        obj = this.f15779a.f15782c;
        synchronized (obj) {
            z = this.f15779a.f15783d;
            if (z) {
                z2 = this.f15779a.f15784e;
                if (z2) {
                    this.f15779a.f15783d = false;
                    C3556uu.m6751b("App went background");
                    list = this.f15779a.f15785f;
                    for (duj dujVar : list) {
                        try {
                            dujVar.mo7056a(false);
                        } catch (Exception e) {
                            C3645yb.m6748c("", e);
                        }
                    }
                }
            }
            C3556uu.m6751b("App is still foreground");
        }
    }
}
