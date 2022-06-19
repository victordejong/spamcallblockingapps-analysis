package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zb3.class */
public final class zb3 implements i53 {

    /* renamed from: a */
    private final SecretKey f32865a;

    /* renamed from: b */
    private final byte[] f32866b;

    /* renamed from: c */
    private final byte[] f32867c;

    public zb3(byte[] bArr) {
        gc3.m14964a(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f32865a = secretKeySpec;
        Cipher m8452b = m8452b();
        m8452b.init(1, secretKeySpec);
        byte[] m8875a = ya3.m8875a(m8452b.doFinal(new byte[16]));
        this.f32866b = m8875a;
        this.f32867c = ya3.m8875a(m8875a);
    }

    /* renamed from: b */
    private static Cipher m8452b() {
        if (a43.m16694a(1)) {
            return nb3.f27065d.m12953b("AES/ECB/NoPadding");
        }
        throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
    }

    @Override // com.google.android.gms.internal.ads.i53
    /* renamed from: a */
    public final byte[] mo8453a(byte[] bArr, int i) {
        if (i <= 16) {
            Cipher m8452b = m8452b();
            m8452b.init(1, this.f32865a);
            int length = bArr.length;
            int max = Math.max(1, (int) Math.ceil(length / 16.0d));
            byte[] m8470b = max * 16 == length ? za3.m8470b(bArr, (max - 1) * 16, this.f32866b, 0, 16) : za3.m8468d(ya3.m8874b(Arrays.copyOfRange(bArr, (max - 1) * 16, length)), this.f32867c);
            byte[] bArr2 = new byte[16];
            for (int i2 = 0; i2 < max - 1; i2++) {
                bArr2 = m8452b.doFinal(za3.m8470b(bArr2, 0, bArr, i2 * 16, 16));
            }
            return Arrays.copyOf(m8452b.doFinal(za3.m8468d(m8470b, bArr2)), i);
        }
        throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
    }
}
