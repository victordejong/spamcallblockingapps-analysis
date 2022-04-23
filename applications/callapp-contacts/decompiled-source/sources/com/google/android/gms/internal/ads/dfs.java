package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfs.class */
final class dfs extends dcw<ddb, dhy> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dfs(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.dcw
    public final /* synthetic */ ddb a(dhy dhyVar) throws GeneralSecurityException {
        dhy dhyVar2 = dhyVar;
        dhw a2 = dhyVar2.a().a();
        SecretKeySpec secretKeySpec = new SecretKeySpec(dhyVar2.zzihd.d(), "HMAC");
        int i = dhyVar2.a().zzihi;
        int i2 = dfu.f26811a[a2.ordinal()];
        if (i2 == 1) {
            return new dkw(new dku("HMACSHA1", secretKeySpec), i);
        }
        if (i2 == 2) {
            return new dkw(new dku("HMACSHA256", secretKeySpec), i);
        }
        if (i2 == 3) {
            return new dkw(new dku("HMACSHA512", secretKeySpec), i);
        }
        throw new GeneralSecurityException("unknown hash");
    }
}
