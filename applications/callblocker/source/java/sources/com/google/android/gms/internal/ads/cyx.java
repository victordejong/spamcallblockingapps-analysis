package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyx.class */
public final class cyx implements ctd {

    /* renamed from: a */
    private final SecretKey f13831a;

    /* renamed from: b */
    private final int f13832b;

    /* renamed from: c */
    private byte[] f13833c;

    /* renamed from: d */
    private byte[] f13834d;

    public cyx(byte[] bArr, int i) {
        dao.m10263a(bArr.length);
        if (i < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, min is 10 bytes");
        }
        if (i > 16) {
            throw new InvalidAlgorithmParameterException("tag size too large, max is 16 bytes");
        }
        this.f13831a = new SecretKeySpec(bArr, "AES");
        this.f13832b = i;
        Cipher m10316a = m10316a();
        m10316a.init(1, this.f13831a);
        this.f13833c = cze.m10307a(m10316a.doFinal(new byte[16]));
        this.f13834d = cze.m10307a(this.f13833c);
    }

    /* renamed from: a */
    private static Cipher m10316a() {
        return czy.f13884a.m10281a("AES/ECB/NoPadding");
    }

    @Override // com.google.android.gms.internal.ads.ctd
    /* renamed from: a */
    public final byte[] mo10275a(byte[] bArr) {
        byte[] m10303a;
        Cipher m10316a = m10316a();
        m10316a.init(1, this.f13831a);
        int max = Math.max(1, (int) Math.ceil(bArr.length / 16.0d));
        if ((max << 4) == bArr.length) {
            m10303a = czh.m10304a(bArr, (max - 1) << 4, this.f13833c, 0, 16);
        } else {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, (max - 1) << 4, bArr.length);
            if (copyOfRange.length >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] copyOf = Arrays.copyOf(copyOfRange, 16);
            copyOf[copyOfRange.length] = (byte) (-128);
            m10303a = czh.m10303a(copyOf, this.f13834d);
        }
        byte[] bArr2 = new byte[16];
        for (int i = 0; i < max - 1; i++) {
            bArr2 = m10316a.doFinal(czh.m10304a(bArr2, 0, bArr, i << 4, 16));
        }
        byte[] m10303a2 = czh.m10303a(m10303a, bArr2);
        byte[] bArr3 = new byte[this.f13832b];
        System.arraycopy(m10316a.doFinal(m10303a2), 0, bArr3, 0, this.f13832b);
        return bArr3;
    }
}
