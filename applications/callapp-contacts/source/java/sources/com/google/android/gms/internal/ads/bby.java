package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bby.class */
public final class bby implements dsi<ayh> {

    /* renamed from: a */
    private final dsv<Context> f43505a;

    /* renamed from: b */
    private final dsv<cov> f43506b;

    public bby(dsv<Context> dsvVar, dsv<cov> dsvVar2) {
        this.f43505a = dsvVar;
        this.f43506b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayh) dso.m15764b(new ayh(this.f43505a.mo14005a(), new HashSet(), this.f43506b.mo14005a()));
    }
}
