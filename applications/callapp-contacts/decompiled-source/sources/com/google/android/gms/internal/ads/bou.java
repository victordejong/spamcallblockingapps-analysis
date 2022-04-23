package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bou.class */
public final class bou implements dsi<bor> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24814a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<wo> f24815b;

    private bou(dsv<Context> dsvVar, dsv<wo> dsvVar2) {
        this.f24814a = dsvVar;
        this.f24815b = dsvVar2;
    }

    public static bou a(dsv<Context> dsvVar, dsv<wo> dsvVar2) {
        return new bou(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bor(this.f24814a.a(), this.f24815b.a());
    }
}
