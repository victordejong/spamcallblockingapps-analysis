package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import com.google.android.gms.internal.ads.dip;
import java.security.GeneralSecurityException;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dde.class */
public final class dde {
    @Deprecated
    /* renamed from: a */
    public static final dcz m16852a(byte[] bArr) throws GeneralSecurityException {
        try {
            dip m16624a = dip.m16624a(bArr, dmt.m16396a());
            for (dip.C12363b c12363b : m16624a.zziku) {
                if (c12363b.m16623a().m16638a() == dih.EnumC12358a.UNKNOWN_KEYMATERIAL || c12363b.m16623a().m16638a() == dih.EnumC12358a.SYMMETRIC || c12363b.m16623a().m16638a() == dih.EnumC12358a.ASYMMETRIC_PRIVATE) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            if (m16624a != null && m16624a.zziku.size() > 0) {
                return new dcz(m16624a);
            }
            throw new GeneralSecurityException("empty keyset");
        } catch (zzenn e) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
