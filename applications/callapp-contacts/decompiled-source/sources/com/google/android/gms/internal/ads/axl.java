package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/axl.class */
public final class axl implements dsi<bvx> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23983a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<f> f23984b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bvz> f23985c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<bso> f23986d;

    private axl(awm awmVar, dsv<f> dsvVar, dsv<bvz> dsvVar2, dsv<bso> dsvVar3) {
        this.f23983a = awmVar;
        this.f23984b = dsvVar;
        this.f23985c = dsvVar2;
        this.f23986d = dsvVar3;
    }

    public static axl a(awm awmVar, dsv<f> dsvVar, dsv<bvz> dsvVar2, dsv<bso> dsvVar3) {
        return new axl(awmVar, dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        awm awmVar = this.f23983a;
        f a2 = this.f23984b.a();
        bvz a3 = this.f23985c.a();
        bso a4 = this.f23986d.a();
        if (awmVar.o == null) {
            awmVar.o = new bvx(a2, a3, a4);
        }
        return (bvx) dso.b(awmVar.o);
    }
}
