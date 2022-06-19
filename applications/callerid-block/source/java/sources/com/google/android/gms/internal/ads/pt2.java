package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pt2.class */
public final class pt2 implements Runnable {

    /* renamed from: b */
    private final AbstractC1676c1 f8167b;

    /* renamed from: c */
    private final C1992v6 f8168c;

    /* renamed from: d */
    private final Runnable f8169d;

    public pt2(AbstractC1676c1 abstractC1676c1, C1992v6 c1992v6, Runnable runnable) {
        this.f8167b = abstractC1676c1;
        this.f8168c = c1992v6;
        this.f8169d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8167b.m7889q();
        if (this.f8168c.m5309c()) {
            this.f8167b.m7882x(this.f8168c.f8868a);
        } else {
            this.f8167b.m7881y(this.f8168c.f8870c);
        }
        if (this.f8168c.f8871d) {
            this.f8167b.m7898e("intermediate-response");
        } else {
            this.f8167b.m7897h("done");
        }
        Runnable runnable = this.f8169d;
        if (runnable != null) {
            runnable.run();
        }
    }
}
