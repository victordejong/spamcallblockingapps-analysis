package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/z02.class */
public final class z02 {
    @Deprecated
    /* renamed from: a */
    public static final v02 m4678a(byte[] bArr) {
        try {
            b82 H = b82.H(bArr, bc2.m8043a());
            for (a82 a82Var : H.F()) {
                if (a82Var.F().G() == zzenx.b || a82Var.F().G() == zzenx.c || a82Var.F().G() == zzenx.d) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            return v02.m5323a(H);
        } catch (zzett e) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
