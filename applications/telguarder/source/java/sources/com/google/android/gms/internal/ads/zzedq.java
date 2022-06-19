package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedq.class */
final class zzedq extends zzeaz<zzebd, zzefv> {
    public zzedq(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzeaz
    public final /* synthetic */ zzebd zzah(zzefv zzefvVar) throws GeneralSecurityException {
        zzefv zzefvVar2 = zzefvVar;
        zzeft zzbdu = zzefvVar2.zzbdo().zzbdu();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzefvVar2.zzbbe().toByteArray(), "HMAC");
        int zzbbj = zzefvVar2.zzbdo().zzbbj();
        int i = zzeds.zzidt[zzbdu.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return new zzeir(new zzeip("HMACSHA256", secretKeySpec), zzbbj);
            }
            if (i != 3) {
                throw new GeneralSecurityException("unknown hash");
            }
            return new zzeir(new zzeip("HMACSHA512", secretKeySpec), zzbbj);
        }
        return new zzeir(new zzeip("HMACSHA1", secretKeySpec), zzbbj);
    }
}
