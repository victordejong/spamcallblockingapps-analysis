package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sb1.class */
public final class sb1 implements cj3<Set<ja1<w71>>> {

    /* renamed from: a */
    private final pb1 f29435a;

    /* renamed from: b */
    private final pj3<x11> f29436b;

    public sb1(pb1 pb1Var, pj3<x11> pj3Var) {
        this.f29435a = pb1Var;
        this.f29436b = pj3Var;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Set singleton = Collections.singleton(new ja1(this.f29436b.mo8141b(), qi0.f28500f));
        kj3.m13879b(singleton);
        return singleton;
    }
}
