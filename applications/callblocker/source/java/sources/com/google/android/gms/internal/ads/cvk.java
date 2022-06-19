package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvk.class */
final class cvk extends csw<cxq, cxp> {

    /* renamed from: a */
    private final /* synthetic */ cvi f13724a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cvk(cvi cviVar, Class cls) {
        super(cls);
        this.f13724a = cviVar;
    }

    @Override // com.google.android.gms.internal.ads.csw
    /* renamed from: a */
    public final /* synthetic */ cxq mo10632a(dbi dbiVar) {
        return cxq.m10433a(dbiVar, dci.m10138a());
    }

    @Override // com.google.android.gms.internal.ads.csw
    /* renamed from: a */
    public final /* synthetic */ void mo10631a(cxq cxqVar) {
        cxq cxqVar2 = cxqVar;
        if (cxqVar2.m10432b() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        cvi.m10635b(cxqVar2.m10434a());
    }

    @Override // com.google.android.gms.internal.ads.csw
    /* renamed from: b */
    public final /* synthetic */ cxp mo10630b(cxq cxqVar) {
        cxq cxqVar2 = cxqVar;
        return (cxp) ((dcw) cxp.m10440d().m10437a(0).m10436a(cxqVar2.m10434a()).m10435a(dbi.m10219a(daj.m10272a(cxqVar2.m10432b()))).mo9987g());
    }
}
