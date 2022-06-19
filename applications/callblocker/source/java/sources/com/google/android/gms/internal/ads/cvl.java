package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvl.class */
final class cvl extends csz<ctd, cxp> {
    public cvl(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.csz
    /* renamed from: a */
    public final /* synthetic */ ctd mo10629a(cxp cxpVar) {
        dah dahVar;
        cxp cxpVar2 = cxpVar;
        cxm m10429a = cxpVar2.m10443b().m10429a();
        SecretKeySpec secretKeySpec = new SecretKeySpec(cxpVar2.m10441c().m10210d(), "HMAC");
        int m10428b = cxpVar2.m10443b().m10428b();
        switch (cvo.f13733a[m10429a.ordinal()]) {
            case 1:
                dahVar = new dah("HMACSHA1", secretKeySpec, m10428b);
                break;
            case 2:
                dahVar = new dah("HMACSHA256", secretKeySpec, m10428b);
                break;
            case 3:
                dahVar = new dah("HMACSHA512", secretKeySpec, m10428b);
                break;
            default:
                throw new GeneralSecurityException("unknown hash");
        }
        return dahVar;
    }
}
