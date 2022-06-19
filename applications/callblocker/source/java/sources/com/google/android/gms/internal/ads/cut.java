package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cut.class */
public final class cut extends csz<csq, cxd> {
    public cut(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.csz
    /* renamed from: a */
    public final /* synthetic */ csq mo10629a(cxd cxdVar) {
        cxd cxdVar2 = cxdVar;
        cxc m10470b = cxdVar2.m10485b().m10470b();
        cxh m10497a = m10470b.m10497a();
        czt m10645a = cvc.m10645a(m10497a.m10457a());
        byte[] m10210d = cxdVar2.m10483c().m10210d();
        return new czn((ECPrivateKey) czy.f13888e.m10281a("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, m10210d), czr.m10290a(m10645a))), m10497a.m10455c().m10210d(), cvc.m10644a(m10497a.m10456b()), cvc.m10647a(m10470b.m10495c()), new cve(m10470b.m10496b().m10503a()));
    }
}
