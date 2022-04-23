package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bby.class */
public final class bby implements dsi<ayh> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24144a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cov> f24145b;

    public bby(dsv<Context> dsvVar, dsv<cov> dsvVar2) {
        this.f24144a = dsvVar;
        this.f24145b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayh) dso.b(new ayh(this.f24144a.a(), new HashSet(), this.f24145b.a()));
    }
}
