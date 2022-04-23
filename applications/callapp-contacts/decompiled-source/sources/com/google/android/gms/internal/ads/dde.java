package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import com.google.android.gms.internal.ads.dip;
import java.security.GeneralSecurityException;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dde.class */
public final class dde {
    @Deprecated
    public static final dcz a(byte[] bArr) throws GeneralSecurityException {
        try {
            dip a2 = dip.a(bArr, dmt.a());
            for (dip.b bVar : a2.zziku) {
                if (bVar.a().a() == dih.a.UNKNOWN_KEYMATERIAL || bVar.a().a() == dih.a.SYMMETRIC || bVar.a().a() == dih.a.ASYMMETRIC_PRIVATE) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            if (a2 != null && a2.zziku.size() > 0) {
                return new dcz(a2);
            }
            throw new GeneralSecurityException("empty keyset");
        } catch (zzenn e) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
