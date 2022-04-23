package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blo.class */
public final class blo implements dsi<blm> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<blf> f24648a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Set<bll>> f24649b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<f> f24650c;

    private blo(dsv<blf> dsvVar, dsv<Set<bll>> dsvVar2, dsv<f> dsvVar3) {
        this.f24648a = dsvVar;
        this.f24649b = dsvVar2;
        this.f24650c = dsvVar3;
    }

    public static blo a(dsv<blf> dsvVar, dsv<Set<bll>> dsvVar2, dsv<f> dsvVar3) {
        return new blo(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new blm(this.f24648a.a(), this.f24649b.a(), this.f24650c.a());
    }
}
