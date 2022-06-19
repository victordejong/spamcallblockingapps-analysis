package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.zs */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zs.class */
public class C13106zs<T> {

    /* renamed from: a */
    private final C13103zp<T> f50136a;

    /* renamed from: b */
    final AtomicInteger f50137b = new AtomicInteger(0);

    public C13106zs() {
        C13103zp<T> c13103zp = new C13103zp<>();
        this.f50136a = c13103zp;
        dbh.m16901a(c13103zp, new C13109zv(this), C13091zd.f50123f);
    }

    @Deprecated
    /* renamed from: a */
    public final void m13896a(AbstractC13107zt<T> abstractC13107zt, AbstractC13105zr abstractC13105zr) {
        dbh.m16901a(this.f50136a, new C13108zu(this, abstractC13107zt, abstractC13105zr), C13091zd.f50123f);
    }

    @Deprecated
    /* renamed from: a */
    public final void m13895a(T t) {
        this.f50136a.set(t);
    }

    @Deprecated
    /* renamed from: d */
    public final void m13894d() {
        this.f50136a.setException(new Exception());
    }
}
