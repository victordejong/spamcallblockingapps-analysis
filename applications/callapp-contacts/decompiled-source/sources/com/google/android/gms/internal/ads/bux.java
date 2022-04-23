package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bux.class */
public final class bux implements dsi<buw> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25168a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bai> f25169b;

    public bux(dsv<Context> dsvVar, dsv<bai> dsvVar2) {
        this.f25168a = dsvVar;
        this.f25169b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new buw(this.f25168a.a(), this.f25169b.a());
    }
}
