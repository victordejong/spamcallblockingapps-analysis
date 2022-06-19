package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dez.class */
public final class dez extends dcw<dcr, dhq> {
    public dez(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final /* synthetic */ dcr mo16796a(dhq dhqVar) throws GeneralSecurityException {
        dhq dhqVar2 = dhqVar;
        dhn m16678a = dhqVar2.m16688a().m16678a();
        dhu m16693a = m16678a.m16693a();
        dkd m16810a = dfj.m16810a(m16693a.m16665a());
        byte[] m16467d = dhqVar2.zzihd.m16467d();
        return new djy((ECPrivateKey) dkj.f47150e.m16538a("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, m16467d), dkb.m16548a(m16810a))), m16693a.zzija.m16467d(), dfj.m16809a(m16693a.m16664b()), dfj.m16812a(m16678a.m16691c()), new dfl(m16678a.m16692b().m16699a()));
    }
}
