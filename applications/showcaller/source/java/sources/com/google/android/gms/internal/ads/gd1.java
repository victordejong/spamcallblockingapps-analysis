package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gd1.class */
public final class gd1 implements cj3<Set<String>> {

    /* renamed from: a */
    private final pj3<cf1> f23312a;

    public gd1(pj3<cf1> pj3Var) {
        this.f23312a = pj3Var;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Set singleton = ((cd1) this.f23312a).m16080a().m16066d() != null ? Collections.singleton("banner") : Collections.emptySet();
        kj3.m13879b(singleton);
        return singleton;
    }
}
