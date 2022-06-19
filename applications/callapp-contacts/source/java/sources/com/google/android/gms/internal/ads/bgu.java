package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgu.class */
public final class bgu implements dsi<bgs> {

    /* renamed from: a */
    private final dsv<Context> f43896a;

    /* renamed from: b */
    private final dsv<bcr> f43897b;

    /* renamed from: c */
    private final dsv<bdo> f43898c;

    /* renamed from: d */
    private final dsv<bcf> f43899d;

    private bgu(dsv<Context> dsvVar, dsv<bcr> dsvVar2, dsv<bdo> dsvVar3, dsv<bcf> dsvVar4) {
        this.f43896a = dsvVar;
        this.f43897b = dsvVar2;
        this.f43898c = dsvVar3;
        this.f43899d = dsvVar4;
    }

    /* renamed from: a */
    public static bgu m17873a(dsv<Context> dsvVar, dsv<bcr> dsvVar2, dsv<bdo> dsvVar3, dsv<bcf> dsvVar4) {
        return new bgu(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bgs(this.f43896a.mo14005a(), this.f43897b.mo14005a(), this.f43898c.mo14005a(), this.f43899d.mo14005a());
    }
}
