package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apx.class */
public final class apx implements dsi<ayi<zzp>> {

    /* renamed from: a  reason: collision with root package name */
    private final app f23733a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<aom> f23734b;

    private apx(app appVar, dsv<aom> dsvVar) {
        this.f23733a = appVar;
        this.f23734b = dsvVar;
    }

    public static apx a(app appVar, dsv<aom> dsvVar) {
        return new apx(appVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23734b.a(), zd.f));
    }
}
