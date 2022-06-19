package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ox0.class */
public final class ox0 implements cj3<Set<ja1<AbstractC6888qj>>> {

    /* renamed from: a */
    private final ex0 f27770a;

    /* renamed from: b */
    private final pj3<oy0> f27771b;

    public ox0(ex0 ex0Var, pj3<oy0> pj3Var) {
        this.f27770a = ex0Var;
        this.f27771b = pj3Var;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Set singleton = Collections.singleton(new ja1(this.f27771b.mo8141b(), qi0.f28500f));
        kj3.m13879b(singleton);
        return singleton;
    }
}
