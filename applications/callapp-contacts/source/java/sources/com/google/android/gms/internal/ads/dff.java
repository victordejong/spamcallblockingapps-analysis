package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dff.class */
public final class dff extends dcw<dcq, dhr> {
    public dff(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final /* synthetic */ dcq mo16796a(dhr dhrVar) throws GeneralSecurityException {
        dhr dhrVar2 = dhrVar;
        dhn m16678a = dhrVar2.m16678a();
        dhu m16693a = m16678a.m16693a();
        dkd m16810a = dfj.m16810a(m16693a.m16665a());
        byte[] m16467d = dhrVar2.zziiv.m16467d();
        byte[] m16467d2 = dhrVar2.zziiw.m16467d();
        ECParameterSpec m16548a = dkb.m16548a(m16810a);
        ECPoint eCPoint = new ECPoint(new BigInteger(1, m16467d), new BigInteger(1, m16467d2));
        dkb.m16544a(eCPoint, m16548a.getCurve());
        return new djx((ECPublicKey) dkj.f47150e.m16538a("EC").generatePublic(new ECPublicKeySpec(eCPoint, m16548a)), m16693a.zzija.m16467d(), dfj.m16809a(m16693a.m16664b()), dfj.m16812a(m16678a.m16691c()), new dfl(m16678a.m16692b().m16699a()));
    }
}
