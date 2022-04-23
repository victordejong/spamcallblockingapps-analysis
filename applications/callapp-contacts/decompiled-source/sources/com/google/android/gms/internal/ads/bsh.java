package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsh.class */
public final class bsh implements dsi<bsc> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25002a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<brs> f25003b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<zc> f25004c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bli> f25005d;
    private final dsv<cty> e;

    public bsh(dsv<Context> dsvVar, dsv<brs> dsvVar2, dsv<zc> dsvVar3, dsv<bli> dsvVar4, dsv<cty> dsvVar5) {
        this.f25002a = dsvVar;
        this.f25003b = dsvVar2;
        this.f25004c = dsvVar3;
        this.f25005d = dsvVar4;
        this.e = dsvVar5;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bsc(this.f25002a.a(), this.f25003b.a(), this.f25004c.a(), this.f25005d.a(), this.e.a());
    }
}
