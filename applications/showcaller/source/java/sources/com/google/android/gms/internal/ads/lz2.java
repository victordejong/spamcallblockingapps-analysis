package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lz2.class */
public final class lz2 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ r03 f26361d;

    /* renamed from: e */
    final /* synthetic */ int f26362e;

    /* renamed from: f */
    final /* synthetic */ nz2 f26363f;

    public lz2(nz2 nz2Var, r03 r03Var, int i) {
        this.f26363f = nz2Var;
        this.f26361d = r03Var;
        this.f26362e = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f26361d.isCancelled()) {
                this.f26363f.f27375p = null;
                this.f26363f.cancel(false);
            } else {
                this.f26363f.m12773Q(this.f26362e, this.f26361d);
            }
        } finally {
            nz2.m12768V(this.f26363f, null);
        }
    }
}
