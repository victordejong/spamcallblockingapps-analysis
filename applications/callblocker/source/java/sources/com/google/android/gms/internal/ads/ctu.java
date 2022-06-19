package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ctu.class */
final class ctu extends csw<cvz, cvy> {

    /* renamed from: a */
    private final /* synthetic */ ctt f13696a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ctu(ctt cttVar, Class cls) {
        super(cls);
        this.f13696a = cttVar;
    }

    @Override // com.google.android.gms.internal.ads.csw
    /* renamed from: a */
    public final /* synthetic */ cvz mo10632a(dbi dbiVar) {
        return cvz.m10583a(dbiVar, dci.m10138a());
    }

    @Override // com.google.android.gms.internal.ads.csw
    /* renamed from: a */
    public final /* synthetic */ void mo10631a(cvz cvzVar) {
        cvz cvzVar2 = cvzVar;
        new ctx().mo10633f().mo10631a((csw<?, cwc>) cvzVar2.m10584a());
        new cvi().mo10633f().mo10631a((csw<?, cxp>) cvzVar2.m10582b());
        dao.m10263a(cvzVar2.m10584a().m10559b());
    }

    @Override // com.google.android.gms.internal.ads.csw
    /* renamed from: b */
    public final /* synthetic */ cvy mo10630b(cvz cvzVar) {
        cvz cvzVar2 = cvzVar;
        cwc mo10630b = new ctx().mo10633f().mo10630b(cvzVar2.m10584a());
        return (cvy) ((dcw) cvy.m10589d().m10586a(mo10630b).m10585a(new cvi().mo10633f().mo10630b(cvzVar2.m10582b())).m10587a(0).mo9987g());
    }
}
