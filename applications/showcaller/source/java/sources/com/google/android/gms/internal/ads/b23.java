package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b23.class */
public final class b23 {
    @Deprecated
    /* renamed from: a */
    public static final x13 m16451a(byte[] bArr) {
        try {
            m93 m13333F = m93.m13333F(bArr, vd3.m10041a());
            for (l93 l93Var : m13333F.m13335D()) {
                if (l93Var.m13663D().m16661J() == 2 || l93Var.m13663D().m16661J() == 3 || l93Var.m13663D().m16661J() == 4) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            return x13.m9375a(m13333F);
        } catch (zzggm e) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
