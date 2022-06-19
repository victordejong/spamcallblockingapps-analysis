package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.yv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yv.class */
public class C3665yv<T> {

    /* renamed from: a */
    private final C3658yo<T> f17657a = new C3658yo<>();

    /* renamed from: b */
    private final AtomicInteger f17658b = new AtomicInteger(0);

    public C3665yv() {
        crg.m10781a(this.f17657a, new C3664yu(this), C3650yg.f17647f);
    }

    @Deprecated
    /* renamed from: a */
    public final void m6726a(AbstractC3662ys<T> abstractC3662ys, AbstractC3660yq abstractC3660yq) {
        crg.m10781a(this.f17657a, new C3667yx(this, abstractC3662ys, abstractC3660yq), C3650yg.f17647f);
    }

    @Deprecated
    /* renamed from: a */
    public final void m6724a(T t) {
        this.f17657a.m6731b(t);
    }

    @Deprecated
    /* renamed from: d */
    public final void m6723d() {
        this.f17657a.m6733a(new Exception());
    }

    @Deprecated
    /* renamed from: e */
    public final int m6722e() {
        return this.f17658b.get();
    }
}
