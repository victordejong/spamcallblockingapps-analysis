package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkv.class */
public final class dkv implements dfx {

    /* renamed from: a */
    private final SecretKey f47163a;

    /* renamed from: b */
    private byte[] f47164b;

    /* renamed from: c */
    private byte[] f47165c;

    public dkv(byte[] bArr) throws GeneralSecurityException {
        dla.m16521a(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f47163a = secretKeySpec;
        Cipher m16529a = m16529a();
        m16529a.init(1, secretKeySpec);
        byte[] m16565a = djp.m16565a(m16529a.doFinal(new byte[16]));
        this.f47164b = m16565a;
        this.f47165c = djp.m16565a(m16565a);
    }

    /* renamed from: a */
    private static Cipher m16529a() throws GeneralSecurityException {
        return dkj.f47146a.m16538a("AES/ECB/NoPadding");
    }

    @Override // com.google.android.gms.internal.ads.dfx
    /* renamed from: a */
    public final byte[] mo16528a(byte[] bArr, int i) throws GeneralSecurityException {
        byte[] bArr2;
        if (i <= 16) {
            Cipher m16529a = m16529a();
            m16529a.init(1, this.f47163a);
            int max = Math.max(1, (int) Math.ceil(bArr.length / 16.0d));
            if ((max << 4) == bArr.length) {
                bArr2 = djs.m16562a(bArr, (max - 1) << 4, this.f47164b, 0, 16);
            } else {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, (max - 1) << 4, bArr.length);
                if (copyOfRange.length >= 16) {
                    throw new IllegalArgumentException("x must be smaller than a block.");
                }
                byte[] copyOf = Arrays.copyOf(copyOfRange, 16);
                copyOf[copyOfRange.length] = (byte) (-128);
                bArr2 = djs.m16561a(copyOf, this.f47165c);
            }
            byte[] bArr3 = new byte[16];
            for (int i2 = 0; i2 < max - 1; i2++) {
                bArr3 = m16529a.doFinal(djs.m16562a(bArr3, 0, bArr, i2 << 4, 16));
            }
            return Arrays.copyOf(m16529a.doFinal(djs.m16561a(bArr2, bArr3)), i);
        }
        throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
    }
}
