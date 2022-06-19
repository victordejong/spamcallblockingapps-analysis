package com.google.android.gms.internal.ads;

import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cuw.class */
final class cuw extends csw<cwz, cxd> {

    /* renamed from: a */
    private final /* synthetic */ cuu f13707a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cuw(cuu cuuVar, Class cls) {
        super(cls);
        this.f13707a = cuuVar;
    }

    @Override // com.google.android.gms.internal.ads.csw
    /* renamed from: a */
    public final /* synthetic */ cwz mo10632a(dbi dbiVar) {
        return cwz.m10499a(dbiVar, dci.m10138a());
    }

    @Override // com.google.android.gms.internal.ads.csw
    /* renamed from: a */
    public final /* synthetic */ void mo10631a(cwz cwzVar) {
        cvc.m10646a(cwzVar.m10500a());
    }

    @Override // com.google.android.gms.internal.ads.csw
    /* renamed from: b */
    public final /* synthetic */ cxd mo10630b(cwz cwzVar) {
        cwz cwzVar2 = cwzVar;
        KeyPair m10286a = czr.m10286a(czr.m10290a(cvc.m10645a(cwzVar2.m10500a().m10497a().m10457a())));
        ECPublicKey eCPublicKey = (ECPublicKey) m10286a.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) m10286a.getPrivate();
        ECPoint w = eCPublicKey.getW();
        return (cxd) ((dcw) cxd.m10482d().m10480a(0).m10479a((cxg) ((dcw) cxg.m10464e().m10461a(0).m10460a(cwzVar2.m10500a()).m10459a(dbi.m10219a(w.getAffineX().toByteArray())).m10458b(dbi.m10219a(w.getAffineY().toByteArray())).mo9987g())).m10478a(dbi.m10219a(eCPrivateKey.getS().toByteArray())).mo9987g());
    }
}
