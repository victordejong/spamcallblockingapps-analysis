package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ape.class */
public final class ape implements dsi<apf> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<f> f23697a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<yc> f23698b;

    private ape(dsv<f> dsvVar, dsv<yc> dsvVar2) {
        this.f23697a = dsvVar;
        this.f23698b = dsvVar2;
    }

    public static ape a(dsv<f> dsvVar, dsv<yc> dsvVar2) {
        return new ape(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new apf(this.f23697a.a(), this.f23698b.a());
    }
}
