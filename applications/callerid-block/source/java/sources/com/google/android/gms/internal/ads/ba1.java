package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC1610f;
import com.google.android.gms.internal.ads.hd1;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ba1.class */
final class ba1<S extends hd1<?>> {

    /* renamed from: a */
    public final rz1<S> f6126a;

    /* renamed from: b */
    private final long f6127b;

    /* renamed from: c */
    private final AbstractC1610f f6128c;

    public ba1(rz1<S> rz1Var, long j, AbstractC1610f abstractC1610f) {
        this.f6126a = rz1Var;
        this.f6128c = abstractC1610f;
        this.f6127b = abstractC1610f.m8245c() + j;
    }

    /* renamed from: a */
    public final boolean m8045a() {
        return this.f6127b < this.f6128c.m8245c();
    }
}
