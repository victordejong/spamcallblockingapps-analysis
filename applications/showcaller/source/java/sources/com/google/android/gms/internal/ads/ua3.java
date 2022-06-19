package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ua3.class */
public final class ua3 implements i13 {

    /* renamed from: a */
    private static final ThreadLocal<Cipher> f30554a = new sa3();

    /* renamed from: b */
    private static final ThreadLocal<Cipher> f30555b = new ta3();

    /* renamed from: c */
    private final byte[] f30556c;

    /* renamed from: d */
    private final byte[] f30557d;

    /* renamed from: e */
    private final SecretKeySpec f30558e;

    /* renamed from: f */
    private final int f30559f;

    public ua3(byte[] bArr, int i) {
        if (a43.m16694a(1)) {
            if (i != 12 && i != 16) {
                throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
            }
            this.f30559f = i;
            gc3.m14964a(bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            this.f30558e = secretKeySpec;
            Cipher cipher = f30554a.get();
            cipher.init(1, secretKeySpec);
            byte[] m10372c = m10372c(cipher.doFinal(new byte[16]));
            this.f30556c = m10372c;
            this.f30557d = m10372c(m10372c);
            return;
        }
        throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
    }

    /* renamed from: b */
    private static byte[] m10373b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    /* renamed from: c */
    private static byte[] m10372c(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 15) {
                byte b = bArr[15];
                bArr2[15] = (byte) (((bArr[0] >> 7) & 135) ^ (b + b));
                return bArr2;
            }
            byte b2 = bArr[i2];
            int i3 = i2 + 1;
            bArr2[i2] = (byte) (((b2 + b2) ^ ((bArr[i3] & 255) >>> 7)) & 255);
            i = i3;
        }
    }

    /* renamed from: d */
    private final byte[] m10371d(Cipher cipher, int i, byte[] bArr, int i2, int i3) {
        byte[] bArr2;
        int length;
        byte[] bArr3 = new byte[16];
        bArr3[15] = (byte) i;
        if (i3 == 0) {
            return cipher.doFinal(m10373b(bArr3, this.f30556c));
        }
        byte[] doFinal = cipher.doFinal(bArr3);
        int i4 = 0;
        while (i3 - i4 > 16) {
            for (int i5 = 0; i5 < 16; i5++) {
                doFinal[i5] = (byte) (doFinal[i5] ^ bArr[(i2 + i4) + i5]);
            }
            doFinal = cipher.doFinal(doFinal);
            i4 += 16;
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i4 + i2, i2 + i3);
        if (copyOfRange.length == 16) {
            bArr2 = m10373b(copyOfRange, this.f30556c);
        } else {
            bArr2 = Arrays.copyOf(this.f30557d, 16);
            int i6 = 0;
            while (true) {
                length = copyOfRange.length;
                if (i6 >= length) {
                    break;
                }
                bArr2[i6] = (byte) (bArr2[i6] ^ copyOfRange[i6]);
                i6++;
            }
            bArr2[length] = (byte) (bArr2[length] ^ 128);
        }
        return cipher.doFinal(m10373b(doFinal, bArr2));
    }

    @Override // com.google.android.gms.internal.ads.i13
    /* renamed from: a */
    public final byte[] mo8531a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i = this.f30559f;
        if (length <= (Integer.MAX_VALUE - i) - 16) {
            byte[] bArr3 = new byte[i + length + 16];
            byte[] m15524a = ec3.m15524a(i);
            System.arraycopy(m15524a, 0, bArr3, 0, this.f30559f);
            Cipher cipher = f30554a.get();
            cipher.init(1, this.f30558e);
            byte[] m10371d = m10371d(cipher, 0, m15524a, 0, m15524a.length);
            byte[] m10371d2 = m10371d(cipher, 1, bArr2, 0, 0);
            Cipher cipher2 = f30555b.get();
            cipher2.init(1, this.f30558e, new IvParameterSpec(m10371d));
            cipher2.doFinal(bArr, 0, length, bArr3, this.f30559f);
            byte[] m10371d3 = m10371d(cipher, 2, bArr3, this.f30559f, length);
            int i2 = this.f30559f;
            for (int i3 = 0; i3 < 16; i3++) {
                bArr3[length + i2 + i3] = (byte) ((m10371d2[i3] ^ m10371d[i3]) ^ m10371d3[i3]);
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
