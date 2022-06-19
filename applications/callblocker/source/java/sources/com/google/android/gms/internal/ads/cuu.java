package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cxu;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cuu.class */
public final class cuu extends ctj<cxd, cxg> {
    public cuu() {
        super(cxd.class, cxg.class, new cut(csq.class));
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: a */
    public final /* synthetic */ deg mo10638a(dbi dbiVar) {
        return cxd.m10486a(dbiVar, dci.m10138a());
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: a */
    public final /* synthetic */ void mo10637a(deg degVar) {
        cxd cxdVar = (cxd) degVar;
        if (cxdVar.m10483c().m10213c()) {
            throw new GeneralSecurityException("invalid ECIES private key");
        }
        dao.m10262a(cxdVar.m10492a(), 0);
        cvc.m10646a(cxdVar.m10485b().m10470b());
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: b */
    public final String mo10636b() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: c */
    public final cxu.EnumC2931b mo10634c() {
        return cxu.EnumC2931b.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.csx
    /* renamed from: f */
    public final csw<cwz, cxd> mo10633f() {
        return new cuw(this, cwz.class);
    }
}
