package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbx.class */
public final class cbx implements dsi<cbv> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25560a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f25561b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cpo> f25562c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<ViewGroup> f25563d;

    public cbx(dsv<dbs> dsvVar, dsv<Context> dsvVar2, dsv<cpo> dsvVar3, dsv<ViewGroup> dsvVar4) {
        this.f25560a = dsvVar;
        this.f25561b = dsvVar2;
        this.f25562c = dsvVar3;
        this.f25563d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cbv(this.f25560a.a(), this.f25561b.a(), this.f25562c.a(), this.f25563d.a());
    }
}
