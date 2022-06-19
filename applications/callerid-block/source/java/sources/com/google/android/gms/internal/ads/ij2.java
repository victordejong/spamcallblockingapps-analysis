package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ij2.class */
public final class ij2 implements Callable {

    /* renamed from: a */
    private final si2 f6804a;

    /* renamed from: b */
    private final ar0 f6805b;

    public ij2(si2 si2Var, ar0 ar0Var) {
        this.f6804a = si2Var;
        this.f6805b = ar0Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        if (this.f6804a.m5673n() != null) {
            this.f6804a.m5673n().get();
        }
        d61 m5674m = this.f6804a.m5674m();
        if (m5674m != null) {
            try {
                synchronized (this.f6805b) {
                    ar0 ar0Var = this.f6805b;
                    byte[] A = m5674m.A();
                    ar0Var.o(A, 0, A.length, bc2.m8043a());
                }
                return null;
            } catch (zzett | NullPointerException e) {
                return null;
            }
        }
        return null;
    }
}
