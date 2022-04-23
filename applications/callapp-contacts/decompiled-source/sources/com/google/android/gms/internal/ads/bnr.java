package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bnr.class */
public final class bnr implements dsi<boh> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24762a;

    private bnr(dsv<Context> dsvVar) {
        this.f24762a = dsvVar;
    }

    public static bnr a(dsv<Context> dsvVar) {
        return new bnr(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (boh) dso.b(new boh(this.f24762a.a()));
    }
}
