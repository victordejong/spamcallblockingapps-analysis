package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5722o1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r50.class */
public final class r50 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ c60 f28782d;

    /* renamed from: e */
    final /* synthetic */ x40 f28783e;

    /* renamed from: f */
    final /* synthetic */ d60 f28784f;

    public r50(d60 d60Var, c60 c60Var, x40 x40Var) {
        this.f28784f = d60Var;
        this.f28782d = c60Var;
        this.f28783e = x40Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.f28784f.f21491a;
        synchronized (obj) {
            if (this.f28782d.m16031e() != -1 && this.f28782d.m16031e() != 1) {
                this.f28782d.m16032d();
                qi0.f28499e.execute(q50.m12029a(this.f28783e));
                C5722o1.m17990k("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
