package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bau.class */
public final class bau implements dsi<bav> {

    /* renamed from: a */
    private final dsv<C13016wl> f43415a;

    /* renamed from: b */
    private final dsv<Context> f43416b;

    /* renamed from: c */
    private final dsv<C13019wo> f43417c;

    /* renamed from: d */
    private final dsv<View> f43418d;

    /* renamed from: e */
    private final dsv<eht.C12447a.EnumC12448a> f43419e;

    private bau(dsv<C13016wl> dsvVar, dsv<Context> dsvVar2, dsv<C13019wo> dsvVar3, dsv<View> dsvVar4, dsv<eht.C12447a.EnumC12448a> dsvVar5) {
        this.f43415a = dsvVar;
        this.f43416b = dsvVar2;
        this.f43417c = dsvVar3;
        this.f43418d = dsvVar4;
        this.f43419e = dsvVar5;
    }

    /* renamed from: a */
    public static bau m18266a(dsv<C13016wl> dsvVar, dsv<Context> dsvVar2, dsv<C13019wo> dsvVar3, dsv<View> dsvVar4, dsv<eht.C12447a.EnumC12448a> dsvVar5) {
        return new bau(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bav(this.f43415a.mo14005a(), this.f43416b.mo14005a(), this.f43417c.mo14005a(), this.f43418d.mo14005a(), this.f43419e.mo14005a());
    }
}
