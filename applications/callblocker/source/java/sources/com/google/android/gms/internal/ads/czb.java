package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czb.class */
public final class czb implements csm {

    /* renamed from: a */
    private static final ThreadLocal<Cipher> f13839a = new cza();

    /* renamed from: b */
    private static final ThreadLocal<Cipher> f13840b = new czd();

    /* renamed from: c */
    private final byte[] f13841c;

    /* renamed from: d */
    private final byte[] f13842d;

    /* renamed from: e */
    private final SecretKeySpec f13843e;

    /* renamed from: f */
    private final int f13844f;

    public czb(byte[] bArr, int i) {
        if (i == 12 || i == 16) {
            this.f13844f = i;
            dao.m10263a(bArr.length);
            this.f13843e = new SecretKeySpec(bArr, "AES");
            Cipher cipher = f13839a.get();
            cipher.init(1, this.f13843e);
            this.f13841c = m10311a(cipher.doFinal(new byte[16]));
            this.f13842d = m10311a(this.f13841c);
            return;
        }
        throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
    }

    /* renamed from: a */
    private final byte[] m10312a(Cipher cipher, int i, byte[] bArr, int i2, int i3) {
        byte[] copyOf;
        byte[] doFinal;
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) i;
        if (i3 == 0) {
            doFinal = cipher.doFinal(m10310b(bArr2, this.f13841c));
        } else {
            byte[] doFinal2 = cipher.doFinal(bArr2);
            int i4 = 0;
            while (i3 - i4 > 16) {
                for (int i5 = 0; i5 < 16; i5++) {
                    doFinal2[i5] = (byte) (doFinal2[i5] ^ bArr[(i2 + i4) + i5]);
                }
                doFinal2 = cipher.doFinal(doFinal2);
                i4 += 16;
            }
            byte[] copyOfRange = Arrays.copyOfRange(bArr, i2 + i4, i2 + i3);
            if (copyOfRange.length == 16) {
                copyOf = m10310b(copyOfRange, this.f13841c);
            } else {
                copyOf = Arrays.copyOf(this.f13842d, 16);
                for (int i6 = 0; i6 < copyOfRange.length; i6++) {
                    copyOf[i6] = (byte) (copyOf[i6] ^ copyOfRange[i6]);
                }
                copyOf[copyOfRange.length] = (byte) (copyOf[copyOfRange.length] ^ 128);
            }
            doFinal = cipher.doFinal(m10310b(doFinal2, copyOf));
        }
        return doFinal;
    }

    /* renamed from: a */
    private static byte[] m10311a(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        for (int i = 0; i < 15; i++) {
            bArr2[i] = (byte) ((bArr[i] << 1) ^ ((bArr[i + 1] & 255) >>> 7));
        }
        bArr2[15] = (byte) (((bArr[0] & 128) == 0 ? 0 : 135) ^ (bArr[15] << 1));
        return bArr2;
    }

    /* renamed from: b */
    private static byte[] m10310b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    @Override // com.google.android.gms.internal.ads.csm
    /* renamed from: a */
    public final byte[] mo10254a(byte[] bArr, byte[] bArr2) {
        if (bArr.length > (Integer.MAX_VALUE - this.f13844f) - 16) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[this.f13844f + bArr.length + 16];
        byte[] m10272a = daj.m10272a(this.f13844f);
        System.arraycopy(m10272a, 0, bArr3, 0, this.f13844f);
        Cipher cipher = f13839a.get();
        cipher.init(1, this.f13843e);
        byte[] m10312a = m10312a(cipher, 0, m10272a, 0, m10272a.length);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] m10312a2 = m10312a(cipher, 1, bArr2, 0, bArr2.length);
        Cipher cipher2 = f13840b.get();
        cipher2.init(1, this.f13843e, new IvParameterSpec(m10312a));
        cipher2.doFinal(bArr, 0, bArr.length, bArr3, this.f13844f);
        byte[] m10312a3 = m10312a(cipher, 2, bArr3, this.f13844f, bArr.length);
        int length = bArr.length;
        int i = this.f13844f;
        for (int i2 = 0; i2 < 16; i2++) {
            bArr3[length + i + i2] = (byte) ((m10312a2[i2] ^ m10312a[i2]) ^ m10312a3[i2]);
        }
        return bArr3;
    }
}
