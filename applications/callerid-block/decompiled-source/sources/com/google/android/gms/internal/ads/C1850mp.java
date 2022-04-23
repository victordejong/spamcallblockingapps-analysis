package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.mp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mp.class */
public class C1850mp<T> {

    /* renamed from: a */
    private final fp<T> f7620a;

    /* renamed from: b */
    private final AtomicInteger f7621b = new AtomicInteger(0);

    public C1850mp() {
        fp<T> fpVar = new fp<>();
        this.f7620a = fpVar;
        kz1.o(fpVar, new kp(this), C2073zo.f9415f);
    }

    @Deprecated
    /* renamed from: a */
    public final void m6531a(AbstractC1807jp<T> jpVar, AbstractC1772hp hpVar) {
        kz1.o(this.f7620a, new lp(this, jpVar, hpVar), C2073zo.f9415f);
    }

    @Deprecated
    /* renamed from: b */
    public final void m6530b(T t) {
        this.f7620a.c(t);
    }

    @Deprecated
    /* renamed from: c */
    public final void m6529c() {
        this.f7620a.d(new Exception());
    }

    @Deprecated
    /* renamed from: d */
    public final int m6528d() {
        return this.f7621b.get();
    }
}
