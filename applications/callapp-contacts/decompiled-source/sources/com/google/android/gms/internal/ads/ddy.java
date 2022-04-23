package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddy.class */
final class ddy extends dcx<dgm, dgj> {

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ddw f26769b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ddy(ddw ddwVar, Class cls) {
        super(cls);
        this.f26769b = ddwVar;
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ dgm a(dlw dlwVar) throws zzenn {
        return dgm.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ void a(dgm dgmVar) throws GeneralSecurityException {
        dgm dgmVar2 = dgmVar;
        dla.a(dgmVar2.zzihg);
        ddw.a(dgmVar2.a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    public final /* synthetic */ dgj b(dgm dgmVar) throws GeneralSecurityException {
        dgm dgmVar2 = dgmVar;
        return dgj.b().a(dgmVar2.a()).a(dlw.a(dkz.a(dgmVar2.zzihg))).a().f();
    }
}
