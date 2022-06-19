package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/az2.class */
final class az2 extends uy2 {
    public /* synthetic */ az2(xy2 xy2Var) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: a */
    public final void mo8654a(ez2 ez2Var, Thread thread) {
        ez2Var.f22688b = thread;
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: b */
    public final void mo8653b(ez2 ez2Var, ez2 ez2Var2) {
        ez2Var.f22689c = ez2Var2;
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: c */
    public final boolean mo8652c(fz2<?> fz2Var, ez2 ez2Var, ez2 ez2Var2) {
        ez2 ez2Var3;
        synchronized (fz2Var) {
            ez2Var3 = ((fz2) fz2Var).f23208j;
            if (ez2Var3 == ez2Var) {
                ((fz2) fz2Var).f23208j = ez2Var2;
                return true;
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: d */
    public final boolean mo8651d(fz2<?> fz2Var, wy2 wy2Var, wy2 wy2Var2) {
        wy2 wy2Var3;
        synchronized (fz2Var) {
            wy2Var3 = ((fz2) fz2Var).f23207i;
            if (wy2Var3 == wy2Var) {
                ((fz2) fz2Var).f23207i = wy2Var2;
                return true;
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: e */
    public final boolean mo8650e(fz2<?> fz2Var, Object obj, Object obj2) {
        Object obj3;
        synchronized (fz2Var) {
            obj3 = ((fz2) fz2Var).f23206h;
            if (obj3 == obj) {
                ((fz2) fz2Var).f23206h = obj2;
                return true;
            }
            return false;
        }
    }
}
