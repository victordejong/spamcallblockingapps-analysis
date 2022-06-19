package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/baq.class */
public final class baq implements dsi<bar> {

    /* renamed from: a */
    private final dsv<Context> f43402a;

    /* renamed from: b */
    private final dsv<adt> f43403b;

    /* renamed from: c */
    private final dsv<cov> f43404c;

    /* renamed from: d */
    private final dsv<zzbar> f43405d;

    /* renamed from: e */
    private final dsv<eht.C12447a.EnumC12448a> f43406e;

    private baq(dsv<Context> dsvVar, dsv<adt> dsvVar2, dsv<cov> dsvVar3, dsv<zzbar> dsvVar4, dsv<eht.C12447a.EnumC12448a> dsvVar5) {
        this.f43402a = dsvVar;
        this.f43403b = dsvVar2;
        this.f43404c = dsvVar3;
        this.f43405d = dsvVar4;
        this.f43406e = dsvVar5;
    }

    /* renamed from: a */
    public static baq m18269a(dsv<Context> dsvVar, dsv<adt> dsvVar2, dsv<cov> dsvVar3, dsv<zzbar> dsvVar4, dsv<eht.C12447a.EnumC12448a> dsvVar5) {
        return new baq(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bar(this.f43402a.mo14005a(), this.f43403b.mo14005a(), this.f43404c.mo14005a(), this.f43405d.mo14005a(), this.f43406e.mo14005a());
    }
}
