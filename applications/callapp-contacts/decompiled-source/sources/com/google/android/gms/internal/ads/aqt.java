package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqt.class */
public final class aqt implements dsi<aqq> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f23790a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cov> f23791b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<rg> f23792c;

    private aqt(dsv<Context> dsvVar, dsv<cov> dsvVar2, dsv<rg> dsvVar3) {
        this.f23790a = dsvVar;
        this.f23791b = dsvVar2;
        this.f23792c = dsvVar3;
    }

    public static aqt a(dsv<Context> dsvVar, dsv<cov> dsvVar2, dsv<rg> dsvVar3) {
        return new aqt(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new aqq(this.f23790a.a(), this.f23791b.a(), this.f23792c.a());
    }
}
