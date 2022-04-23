package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dez.class */
final class dez extends dcw<dcr, dhq> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dez(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.dcw
    public final /* synthetic */ dcr a(dhq dhqVar) throws GeneralSecurityException {
        dhq dhqVar2 = dhqVar;
        dhn a2 = dhqVar2.a().a();
        dhu a3 = a2.a();
        dkd a4 = dfj.a(a3.a());
        byte[] d2 = dhqVar2.zzihd.d();
        return new djy((ECPrivateKey) dkj.e.a("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, d2), dkb.a(a4))), a3.zzija.d(), dfj.a(a3.b()), dfj.a(a2.c()), new dfl(a2.b().a()));
    }
}
