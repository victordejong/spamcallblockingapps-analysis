package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/by1.class */
final class by1<V> implements Runnable {

    /* renamed from: b */
    final wx1<V> f6217b;

    /* renamed from: c */
    final rz1<? extends V> f6218c;

    by1(wx1<V> wx1Var, rz1<? extends V> rz1Var) {
        this.f6217b = wx1Var;
        this.f6218c = rz1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (wx1.s(this.f6217b) != this) {
            return;
        }
        if (!wx1.q().m4813e(this.f6217b, this, wx1.t(this.f6218c))) {
            return;
        }
        wx1.u(this.f6217b);
    }
}
