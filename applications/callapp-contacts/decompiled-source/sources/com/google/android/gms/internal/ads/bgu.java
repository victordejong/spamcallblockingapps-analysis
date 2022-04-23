package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgu.class */
public final class bgu implements dsi<bgs> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24415a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bcr> f24416b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bdo> f24417c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bcf> f24418d;

    private bgu(dsv<Context> dsvVar, dsv<bcr> dsvVar2, dsv<bdo> dsvVar3, dsv<bcf> dsvVar4) {
        this.f24415a = dsvVar;
        this.f24416b = dsvVar2;
        this.f24417c = dsvVar3;
        this.f24418d = dsvVar4;
    }

    public static bgu a(dsv<Context> dsvVar, dsv<bcr> dsvVar2, dsv<bdo> dsvVar3, dsv<bcf> dsvVar4) {
        return new bgu(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bgs(this.f24415a.a(), this.f24416b.a(), this.f24417c.a(), this.f24418d.a());
    }
}
