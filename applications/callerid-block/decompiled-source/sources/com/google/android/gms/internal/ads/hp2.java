package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hp2.class */
final class hp2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ IOException f6757b;

    /* renamed from: c */
    final /* synthetic */ lp2 f6758c;

    hp2(lp2 lp2Var, IOException iOException) {
        this.f6758c = lp2Var;
        this.f6757b = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        lp2.F(this.f6758c).m6524b(this.f6757b);
    }
}
