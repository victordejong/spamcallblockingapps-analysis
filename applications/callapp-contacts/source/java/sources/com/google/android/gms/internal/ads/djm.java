package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djm.class */
public final class djm implements dcn {

    /* renamed from: a */
    private static final ThreadLocal<Cipher> f47107a = new djl();

    /* renamed from: b */
    private static final ThreadLocal<Cipher> f47108b = new djo();

    /* renamed from: c */
    private final byte[] f47109c;

    /* renamed from: d */
    private final byte[] f47110d;

    /* renamed from: e */
    private final SecretKeySpec f47111e;

    /* renamed from: f */
    private final int f47112f;

    public djm(byte[] bArr, int i) throws GeneralSecurityException {
        if (i == 12 || i == 16) {
            this.f47112f = i;
            dla.m16521a(bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            this.f47111e = secretKeySpec;
            Cipher cipher = f47107a.get();
            cipher.init(1, secretKeySpec);
            byte[] m16568a = m16568a(cipher.doFinal(new byte[16]));
            this.f47109c = m16568a;
            this.f47110d = m16568a(m16568a);
            return;
        }
        throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
    }

    /* renamed from: a */
    private final byte[] m16569a(Cipher cipher, int i, byte[] bArr, int i2, int i3) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr2;
        byte[] bArr3 = new byte[16];
        bArr3[15] = (byte) i;
        if (i3 == 0) {
            return cipher.doFinal(m16567b(bArr3, this.f47109c));
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
            bArr2 = m16567b(copyOfRange, this.f47109c);
        } else {
            bArr2 = Arrays.copyOf(this.f47110d, 16);
            for (int i6 = 0; i6 < copyOfRange.length; i6++) {
                bArr2[i6] = (byte) (bArr2[i6] ^ copyOfRange[i6]);
            }
            bArr2[copyOfRange.length] = (byte) (bArr2[copyOfRange.length] ^ 128);
        }
        return cipher.doFinal(m16567b(doFinal, bArr2));
    }

    /* renamed from: a */
    private static byte[] m16568a(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 15) {
                break;
            }
            int i3 = i2 + 1;
            bArr2[i2] = (byte) ((bArr[i2] << 1) ^ ((bArr[i3] & 255) >>> 7));
            i = i3;
        }
        bArr2[15] = (byte) ((bArr[15] << 1) ^ ((bArr[0] & 128) == 0 ? 0 : 135));
        return bArr2;
    }

    /* renamed from: b */
    private static byte[] m16567b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    @Override // com.google.android.gms.internal.ads.dcn
    /* renamed from: a */
    public final byte[] mo16516a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.f47112f;
        if (length <= (Integer.MAX_VALUE - i) - 16) {
            byte[] bArr3 = new byte[bArr.length + i + 16];
            byte[] m16524a = dkz.m16524a(i);
            System.arraycopy(m16524a, 0, bArr3, 0, this.f47112f);
            Cipher cipher = f47107a.get();
            cipher.init(1, this.f47111e);
            byte[] m16569a = m16569a(cipher, 0, m16524a, 0, m16524a.length);
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            byte[] m16569a2 = m16569a(cipher, 1, bArr2, 0, bArr2.length);
            Cipher cipher2 = f47108b.get();
            cipher2.init(1, this.f47111e, new IvParameterSpec(m16569a));
            cipher2.doFinal(bArr, 0, bArr.length, bArr3, this.f47112f);
            byte[] m16569a3 = m16569a(cipher, 2, bArr3, this.f47112f, bArr.length);
            int length2 = bArr.length;
            int i2 = this.f47112f;
            for (int i3 = 0; i3 < 16; i3++) {
                bArr3[length2 + i2 + i3] = (byte) ((m16569a2[i3] ^ m16569a[i3]) ^ m16569a3[i3]);
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
