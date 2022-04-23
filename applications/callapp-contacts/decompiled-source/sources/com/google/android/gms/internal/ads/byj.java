package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byj.class */
public final class byj implements dsi<byf> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25396a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bai> f25397b;

    public byj(dsv<Context> dsvVar, dsv<bai> dsvVar2) {
        this.f25396a = dsvVar;
        this.f25397b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new byf(this.f25396a.a(), this.f25397b.a());
    }
}
