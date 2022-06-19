package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfd.class */
final class dfd extends dcx<dhm, dhq> {

    /* renamed from: b */
    private final /* synthetic */ dfa f47030b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dfd(dfa dfaVar, Class cls) {
        super(cls);
        this.f47030b = dfaVar;
    }

    @Override // com.google.android.gms.internal.ads.dcx
    /* renamed from: a */
    public final /* synthetic */ dhm mo16799a(dlw dlwVar) throws zzenn {
        return dhm.m16695a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    /* renamed from: a */
    public final /* synthetic */ void mo16798a(dhm dhmVar) throws GeneralSecurityException {
        dfj.m16811a(dhmVar.m16696a());
    }

    @Override // com.google.android.gms.internal.ads.dcx
    /* renamed from: b */
    public final /* synthetic */ dhq mo16797b(dhm dhmVar) throws GeneralSecurityException {
        dhm dhmVar2 = dhmVar;
        KeyPair m16545a = dkb.m16545a(dkb.m16548a(dfj.m16810a(dhmVar2.m16696a().m16693a().m16665a())));
        ECPublicKey eCPublicKey = (ECPublicKey) m16545a.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) m16545a.getPrivate();
        ECPoint w = eCPublicKey.getW();
        return dhq.m16683b().m16681a().m16680a(dhr.m16673b().m16669a().m16668a(dhmVar2.m16696a()).m16667a(dlw.m16475a(w.getAffineX().toByteArray())).m16666b(dlw.m16475a(w.getAffineY().toByteArray())).mo16259f()).m16679a(dlw.m16475a(eCPrivateKey.getS().toByteArray())).mo16259f();
    }
}
