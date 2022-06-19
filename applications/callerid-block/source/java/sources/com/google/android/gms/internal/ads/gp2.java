package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gp2.class */
final class gp2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ jp2 f6706b;

    /* renamed from: c */
    final /* synthetic */ lp2 f6707c;

    gp2(lp2 lp2Var, jp2 jp2Var) {
        this.f6707c = lp2Var;
        this.f6706b = jp2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6706b.m6937a();
        int size = lp2.E(this.f6707c).size();
        for (int i = 0; i < size; i++) {
            ((aq2) lp2.E(this.f6707c).valueAt(i)).g();
        }
    }
}
