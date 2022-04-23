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

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<Cipher> f26864a = new djl();

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<Cipher> f26865b = new djo();

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f26866c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f26867d;
    private final SecretKeySpec e;
    private final int f;

    public djm(byte[] bArr, int i) throws GeneralSecurityException {
        if (i == 12 || i == 16) {
            this.f = i;
            dla.a(bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            this.e = secretKeySpec;
            Cipher cipher = f26864a.get();
            cipher.init(1, secretKeySpec);
            byte[] a2 = a(cipher.doFinal(new byte[16]));
            this.f26866c = a2;
            this.f26867d = a(a2);
            return;
        }
        throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
    }

    private final byte[] a(Cipher cipher, int i, byte[] bArr, int i2, int i3) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr2;
        byte[] bArr3 = new byte[16];
        bArr3[15] = (byte) i;
        if (i3 == 0) {
            return cipher.doFinal(b(bArr3, this.f26866c));
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
            bArr2 = b(copyOfRange, this.f26866c);
        } else {
            bArr2 = Arrays.copyOf(this.f26867d, 16);
            for (int i6 = 0; i6 < copyOfRange.length; i6++) {
                bArr2[i6] = (byte) (bArr2[i6] ^ copyOfRange[i6]);
            }
            bArr2[copyOfRange.length] = (byte) (bArr2[copyOfRange.length] ^ 128);
        }
        return cipher.doFinal(b(doFinal, bArr2));
    }

    private static byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i = 0;
        int i2 = 0;
        while (i2 < 15) {
            byte b2 = bArr[i2];
            int i3 = i2 + 1;
            bArr2[i2] = (byte) ((b2 << 1) ^ ((bArr[i3] & 255) >>> 7));
            i2 = i3;
        }
        byte b3 = bArr[15];
        if ((bArr[0] & 128) != 0) {
            i = 135;
        }
        bArr2[15] = (byte) ((b3 << 1) ^ i);
        return bArr2;
    }

    private static byte[] b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    @Override // com.google.android.gms.internal.ads.dcn
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.f;
        if (length <= (Integer.MAX_VALUE - i) - 16) {
            byte[] bArr3 = new byte[bArr.length + i + 16];
            byte[] a2 = dkz.a(i);
            System.arraycopy(a2, 0, bArr3, 0, this.f);
            Cipher cipher = f26864a.get();
            cipher.init(1, this.e);
            byte[] a3 = a(cipher, 0, a2, 0, a2.length);
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            byte[] a4 = a(cipher, 1, bArr2, 0, bArr2.length);
            Cipher cipher2 = f26865b.get();
            cipher2.init(1, this.e, new IvParameterSpec(a3));
            cipher2.doFinal(bArr, 0, bArr.length, bArr3, this.f);
            byte[] a5 = a(cipher, 2, bArr3, this.f, bArr.length);
            int length2 = bArr.length;
            int i2 = this.f;
            for (int i3 = 0; i3 < 16; i3++) {
                bArr3[length2 + i2 + i3] = (byte) ((a4[i3] ^ a3[i3]) ^ a5[i3]);
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
