package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wv0.class */
public final class wv0 implements cj3<Set<ja1<AbstractC6888qj>>> {

    /* renamed from: a */
    private final tv0 f31799a;

    /* renamed from: b */
    private final pj3<oy0> f31800b;

    public wv0(tv0 tv0Var, pj3<oy0> pj3Var) {
        this.f31799a = tv0Var;
        this.f31800b = pj3Var;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Set singleton = Collections.singleton(new ja1(this.f31800b.mo8141b(), qi0.f28500f));
        kj3.m13879b(singleton);
        return singleton;
    }
}
