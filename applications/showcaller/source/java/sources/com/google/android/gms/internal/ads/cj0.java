package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cj0.class */
public class cj0<T> {

    /* renamed from: a */
    private final vi0<T> f21261a;

    /* renamed from: b */
    private final AtomicInteger f21262b = new AtomicInteger(0);

    public cj0() {
        vi0<T> vi0Var = new vi0<>();
        this.f21261a = vi0Var;
        k03.m13988p(vi0Var, new aj0(this), qi0.f28500f);
    }

    @Deprecated
    /* renamed from: b */
    public final void m16034b(zi0<T> zi0Var, xi0 xi0Var) {
        k03.m13988p(this.f21261a, new bj0(this, zi0Var, xi0Var), qi0.f28500f);
    }

    @Deprecated
    /* renamed from: c */
    public final void m16033c(T t) {
        this.f21261a.m10016c(t);
    }

    @Deprecated
    /* renamed from: d */
    public final void m16032d() {
        this.f21261a.m10014f(new Exception());
    }

    @Deprecated
    /* renamed from: e */
    public final int m16031e() {
        return this.f21262b.get();
    }
}
