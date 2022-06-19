package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zy2.class */
public final class zy2<V> implements Runnable {

    /* renamed from: d */
    final fz2<V> f33453d;

    /* renamed from: e */
    final r03<? extends V> f33454e;

    public zy2(fz2<V> fz2Var, r03<? extends V> r03Var) {
        this.f33453d = fz2Var;
        this.f33454e = r03Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object m15016h;
        uy2 uy2Var;
        obj = ((fz2) this.f33453d).f23206h;
        if (obj != this) {
            return;
        }
        m15016h = fz2.m15016h(this.f33454e);
        uy2Var = fz2.f23204f;
        if (!uy2Var.mo8650e(this.f33453d, this, m15016h)) {
            return;
        }
        fz2.m15023B(this.f33453d);
    }
}
