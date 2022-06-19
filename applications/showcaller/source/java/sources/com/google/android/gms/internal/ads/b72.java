package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC6227e;
import com.google.android.gms.internal.ads.va2;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b72.class */
final class b72<S extends va2<?>> {

    /* renamed from: a */
    public final r03<S> f20306a;

    /* renamed from: b */
    private final long f20307b;

    /* renamed from: c */
    private final AbstractC6227e f20308c;

    public b72(r03<S> r03Var, long j, AbstractC6227e abstractC6227e) {
        this.f20306a = r03Var;
        this.f20308c = abstractC6227e;
        this.f20307b = abstractC6227e.mo16806b() + j;
    }

    /* renamed from: a */
    public final boolean m16438a() {
        return this.f20307b < this.f20308c.mo16806b();
    }
}
