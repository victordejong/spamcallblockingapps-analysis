package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfs.class */
final class dfs extends dcw<ddb, dhy> {
    public dfs(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final /* synthetic */ ddb mo16796a(dhy dhyVar) throws GeneralSecurityException {
        dhy dhyVar2 = dhyVar;
        dhw m16646a = dhyVar2.m16661a().m16646a();
        SecretKeySpec secretKeySpec = new SecretKeySpec(dhyVar2.zzihd.m16467d(), "HMAC");
        int i = dhyVar2.m16661a().zzihi;
        int i2 = dfu.f47052a[m16646a.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                return new dkw(new dku("HMACSHA256", secretKeySpec), i);
            }
            if (i2 != 3) {
                throw new GeneralSecurityException("unknown hash");
            }
            return new dkw(new dku("HMACSHA512", secretKeySpec), i);
        }
        return new dkw(new dku("HMACSHA1", secretKeySpec), i);
    }
}
