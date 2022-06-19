package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddx.class */
final class ddx extends dcx<dgi, dgf> {

    /* renamed from: b */
    private final /* synthetic */ ddv f47006b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ddx(ddv ddvVar, Class cls) {
        super(cls);
        this.f47006b = ddvVar;
    }

    @Override // com.google.android.gms.internal.ads.dcx
    /* renamed from: a */
    public final /* synthetic */ dgi mo16799a(dlw dlwVar) throws zzenn {
        return dgi.m16761a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    /* renamed from: a */
    public final /* synthetic */ void mo16798a(dgi dgiVar) throws GeneralSecurityException {
        dgi dgiVar2 = dgiVar;
        new ddw().mo16800d().mo16798a((dcx<?, dgj>) dgiVar2.m16762a());
        new dfp().mo16800d().mo16798a((dcx<?, dhy>) dgiVar2.m16760b());
        dla.m16521a(dgiVar2.m16762a().zzihg);
    }

    @Override // com.google.android.gms.internal.ads.dcx
    /* renamed from: b */
    public final /* synthetic */ dgf mo16797b(dgi dgiVar) throws GeneralSecurityException {
        dgi dgiVar2 = dgiVar;
        dgj mo16797b = new ddw().mo16800d().mo16797b(dgiVar2.m16762a());
        return dgf.m16767c().m16764a(mo16797b).m16763a(new dfp().mo16800d().mo16797b(dgiVar2.m16760b())).m16765a(0).mo16259f();
    }
}
