package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC12102f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apc.class */
public final class apc implements dsi<C13063yc> {

    /* renamed from: a */
    private final dsv<AbstractC12102f> f42562a;

    /* renamed from: b */
    private final dsv<C13075yo> f42563b;

    /* renamed from: c */
    private final dsv<cpo> f42564c;

    private apc(dsv<AbstractC12102f> dsvVar, dsv<C13075yo> dsvVar2, dsv<cpo> dsvVar3) {
        this.f42562a = dsvVar;
        this.f42563b = dsvVar2;
        this.f42564c = dsvVar3;
    }

    /* renamed from: a */
    public static apc m18497a(dsv<AbstractC12102f> dsvVar, dsv<C13075yo> dsvVar2, dsv<cpo> dsvVar3) {
        return new apc(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        AbstractC12102f mo14005a = this.f42562a.mo14005a();
        C13075yo mo14005a2 = this.f42563b.mo14005a();
        return (C13063yc) dso.m15764b(new C13063yc(mo14005a, mo14005a2, mo14005a2.f50088b.m13957a(), this.f42564c.mo14005a().f46326f));
    }
}
