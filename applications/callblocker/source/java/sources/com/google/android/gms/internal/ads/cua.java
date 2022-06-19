package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cua.class */
final class cua extends csw<cwk, cwh> {

    /* renamed from: a */
    private final /* synthetic */ cty f13698a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cua(cty ctyVar, Class cls) {
        super(cls);
        this.f13698a = ctyVar;
    }

    @Override // com.google.android.gms.internal.ads.csw
    /* renamed from: a */
    public final /* synthetic */ cwk mo10632a(dbi dbiVar) {
        return cwk.m10537a(dbiVar, dci.m10138a());
    }

    @Override // com.google.android.gms.internal.ads.csw
    /* renamed from: a */
    public final /* synthetic */ void mo10631a(cwk cwkVar) {
        cwk cwkVar2 = cwkVar;
        dao.m10263a(cwkVar2.m10536b());
        if (cwkVar2.m10538a().m10534a() == 12 || cwkVar2.m10538a().m10534a() == 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.csw
    /* renamed from: b */
    public final /* synthetic */ cwh mo10630b(cwk cwkVar) {
        cwk cwkVar2 = cwkVar;
        return (cwh) ((dcw) cwh.m10543d().m10539a(dbi.m10219a(daj.m10272a(cwkVar2.m10536b()))).m10540a(cwkVar2.m10538a()).m10541a(0).mo9987g());
    }
}
