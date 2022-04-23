package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddx.class */
final class ddx extends dcx<dgi, dgf> {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ddv f26768b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ddx(ddv ddvVar, Class cls) {
        super(cls);
        this.f26768b = ddvVar;
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ dgi a(dlw dlwVar) throws zzenn {
        return dgi.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ void a(dgi dgiVar) throws GeneralSecurityException {
        dgi dgiVar2 = dgiVar;
        new ddw().d().a((dcx<?, dgj>) dgiVar2.a());
        new dfp().d().a((dcx<?, dhy>) dgiVar2.b());
        dla.a(dgiVar2.a().zzihg);
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ dgf b(dgi dgiVar) throws GeneralSecurityException {
        dgi dgiVar2 = dgiVar;
        dgj b2 = new ddw().d().b(dgiVar2.a());
        return dgf.c().a(b2).a(new dfp().d().b(dgiVar2.b())).a(0).f();
    }
}
