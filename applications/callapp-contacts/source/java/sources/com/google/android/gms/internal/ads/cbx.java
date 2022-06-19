package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbx.class */
public final class cbx implements dsi<cbv> {

    /* renamed from: a */
    private final dsv<dbs> f45481a;

    /* renamed from: b */
    private final dsv<Context> f45482b;

    /* renamed from: c */
    private final dsv<cpo> f45483c;

    /* renamed from: d */
    private final dsv<ViewGroup> f45484d;

    public cbx(dsv<dbs> dsvVar, dsv<Context> dsvVar2, dsv<cpo> dsvVar3, dsv<ViewGroup> dsvVar4) {
        this.f45481a = dsvVar;
        this.f45482b = dsvVar2;
        this.f45483c = dsvVar3;
        this.f45484d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cbv(this.f45481a.mo14005a(), this.f45482b.mo14005a(), this.f45483c.mo14005a(), this.f45484d.mo14005a());
    }
}
