package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zs.class */
public class zs<T> {

    /* renamed from: a  reason: collision with root package name */
    private final zp<T> f28588a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicInteger f28589b = new AtomicInteger(0);

    public zs() {
        zp<T> zpVar = new zp<>();
        this.f28588a = zpVar;
        dbh.a(zpVar, new zv(this), zd.f);
    }

    @Deprecated
    public final void a(zt<T> ztVar, zr zrVar) {
        dbh.a(this.f28588a, new zu(this, ztVar, zrVar), zd.f);
    }

    @Deprecated
    public final void a(T t) {
        this.f28588a.set(t);
    }

    @Deprecated
    public final void d() {
        this.f28588a.setException(new Exception());
    }
}
