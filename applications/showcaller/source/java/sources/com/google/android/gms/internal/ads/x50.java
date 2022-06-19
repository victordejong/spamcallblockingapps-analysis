package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x50.class */
public final class x50 extends cj0<e60> {

    /* renamed from: c */
    private final Object f31907c = new Object();

    /* renamed from: d */
    private final c60 f31908d;

    /* renamed from: e */
    private boolean f31909e;

    public x50(c60 c60Var) {
        this.f31908d = c60Var;
    }

    /* renamed from: g */
    public final void m9352g() {
        synchronized (this.f31907c) {
            if (this.f31909e) {
                return;
            }
            this.f31909e = true;
            m16034b(new u50(this), new yi0());
            m16034b(new v50(this), new w50(this));
        }
    }
}
