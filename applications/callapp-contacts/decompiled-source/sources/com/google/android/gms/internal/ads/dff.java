package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dff.class */
final class dff extends dcw<dcq, dhr> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dff(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.dcw
    public final /* synthetic */ dcq a(dhr dhrVar) throws GeneralSecurityException {
        dhr dhrVar2 = dhrVar;
        dhn a2 = dhrVar2.a();
        dhu a3 = a2.a();
        dkd a4 = dfj.a(a3.a());
        byte[] d2 = dhrVar2.zziiv.d();
        byte[] d3 = dhrVar2.zziiw.d();
        ECParameterSpec a5 = dkb.a(a4);
        ECPoint eCPoint = new ECPoint(new BigInteger(1, d2), new BigInteger(1, d3));
        dkb.a(eCPoint, a5.getCurve());
        return new djx((ECPublicKey) dkj.e.a("EC").generatePublic(new ECPublicKeySpec(eCPoint, a5)), a3.zzija.d(), dfj.a(a3.b()), dfj.a(a2.c()), new dfl(a2.b().a()));
    }
}
