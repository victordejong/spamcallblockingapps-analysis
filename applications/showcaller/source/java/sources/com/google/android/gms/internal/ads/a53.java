package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a53.class */
final class a53 extends v13<a23, r83> {
    public a53(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.v13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ a23 mo8969b(r83 r83Var) {
        cc3 cc3Var;
        r83 r83Var2 = r83Var;
        int m9322H = r83Var2.m11666D().m9322H();
        SecretKeySpec secretKeySpec = new SecretKeySpec(r83Var2.m11665E().zzz(), "HMAC");
        int m9327C = r83Var2.m11666D().m9327C();
        int i = m9322H - 2;
        if (i == 1) {
            cc3Var = new cc3(new bc3("HMACSHA1", secretKeySpec), m9327C);
        } else if (i == 2) {
            cc3Var = new cc3(new bc3("HMACSHA384", secretKeySpec), m9327C);
        } else if (i == 3) {
            cc3Var = new cc3(new bc3("HMACSHA256", secretKeySpec), m9327C);
        } else if (i == 4) {
            cc3Var = new cc3(new bc3("HMACSHA512", secretKeySpec), m9327C);
        } else if (i != 5) {
            throw new GeneralSecurityException("unknown hash");
        } else {
            cc3Var = new cc3(new bc3("HMACSHA224", secretKeySpec), m9327C);
        }
        return cc3Var;
    }
}
