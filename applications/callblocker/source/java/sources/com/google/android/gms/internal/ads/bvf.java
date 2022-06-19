package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvf.class */
public final class bvf implements cah<Object> {

    /* renamed from: a */
    private final crt<String> f12327a;

    /* renamed from: b */
    private final Executor f12328b;

    public bvf(crt<String> crtVar, Executor executor) {
        this.f12327a = crtVar;
        this.f12328b = executor;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<Object> mo11479a() {
        return crg.m10782a(this.f12327a, bve.f12326a, this.f12328b);
    }
}
