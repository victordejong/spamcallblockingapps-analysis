package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j43.class */
public final class j43 extends v13<m13, c83> {
    public j43(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.v13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ m13 mo8969b(c83 c83Var) {
        c83 c83Var2 = c83Var;
        z73 m15300D = c83Var2.m16109D().m15300D();
        k83 m8495C = m15300D.m8495C();
        int m10412c = u43.m10412c(m8495C.m13958H());
        byte[] zzz = c83Var2.m16108E().zzz();
        return new fb3((ECPrivateKey) nb3.f27071j.m12953b("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, zzz), kb3.m13925d(m10412c))), m8495C.m13963C().zzz(), u43.m10413b(m8495C.m13957I()), u43.m10411d(m15300D.m8488J()), new v43(m15300D.m8494D().m10793C()));
    }
}
