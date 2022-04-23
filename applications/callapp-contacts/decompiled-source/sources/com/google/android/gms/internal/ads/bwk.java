package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwk.class */
public final class bwk implements dsi<bwj> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25273a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bhx> f25274b;

    public bwk(dsv<Context> dsvVar, dsv<bhx> dsvVar2) {
        this.f25273a = dsvVar;
        this.f25274b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bwj(this.f25273a.a(), this.f25274b.a());
    }
}
