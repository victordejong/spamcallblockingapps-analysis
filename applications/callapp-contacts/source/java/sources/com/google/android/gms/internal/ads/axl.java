package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC12102f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/axl.class */
public final class axl implements dsi<bvx> {

    /* renamed from: a */
    private final awm f43297a;

    /* renamed from: b */
    private final dsv<AbstractC12102f> f43298b;

    /* renamed from: c */
    private final dsv<bvz> f43299c;

    /* renamed from: d */
    private final dsv<bso> f43300d;

    private axl(awm awmVar, dsv<AbstractC12102f> dsvVar, dsv<bvz> dsvVar2, dsv<bso> dsvVar3) {
        this.f43297a = awmVar;
        this.f43298b = dsvVar;
        this.f43299c = dsvVar2;
        this.f43300d = dsvVar3;
    }

    /* renamed from: a */
    public static axl m18332a(awm awmVar, dsv<AbstractC12102f> dsvVar, dsv<bvz> dsvVar2, dsv<bso> dsvVar3) {
        return new axl(awmVar, dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        awm awmVar = this.f43297a;
        AbstractC12102f mo14005a = this.f43298b.mo14005a();
        bvz mo14005a2 = this.f43299c.mo14005a();
        bso mo14005a3 = this.f43300d.mo14005a();
        if (awmVar.f43252o == null) {
            awmVar.f43252o = new bvx(mo14005a, mo14005a2, mo14005a3);
        }
        return (bvx) dso.m15764b(awmVar.f43252o);
    }
}
