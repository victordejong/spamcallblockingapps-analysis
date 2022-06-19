package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zi3.class */
public final class zi3<T> implements cj3<T> {

    /* renamed from: a */
    private pj3<T> f32962a;

    /* renamed from: a */
    public static <T> void m8352a(pj3<T> pj3Var, pj3<T> pj3Var2) {
        zi3 zi3Var = (zi3) pj3Var;
        if (zi3Var.f32962a == null) {
            zi3Var.f32962a = pj3Var2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final T mo8141b() {
        pj3<T> pj3Var = this.f32962a;
        if (pj3Var != null) {
            return pj3Var.mo8141b();
        }
        throw new IllegalStateException();
    }
}
