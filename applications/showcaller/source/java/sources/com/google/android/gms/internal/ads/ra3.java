package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ra3.class */
public final class ra3 implements xb3 {

    /* renamed from: a */
    private static final ThreadLocal<Cipher> f28836a = new qa3();

    /* renamed from: b */
    private final SecretKeySpec f28837b;

    /* renamed from: c */
    private final int f28838c;

    /* renamed from: d */
    private final int f28839d;

    public ra3(byte[] bArr, int i) {
        if (a43.m16694a(2)) {
            gc3.m14964a(bArr.length);
            this.f28837b = new SecretKeySpec(bArr, "AES");
            int blockSize = f28836a.get().getBlockSize();
            this.f28839d = blockSize;
            if (i < 12 || i > blockSize) {
                throw new GeneralSecurityException("invalid IV size");
            }
            this.f28838c = i;
            return;
        }
        throw new GeneralSecurityException("Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available.");
    }

    @Override // com.google.android.gms.internal.ads.xb3
    /* renamed from: a */
    public final byte[] mo9294a(byte[] bArr) {
        int length = bArr.length;
        int i = this.f28838c;
        int i2 = Integer.MAX_VALUE - i;
        if (length > i2) {
            StringBuilder sb = new StringBuilder(43);
            sb.append("plaintext length can not exceed ");
            sb.append(i2);
            throw new GeneralSecurityException(sb.toString());
        }
        byte[] bArr2 = new byte[i + length];
        byte[] m15524a = ec3.m15524a(i);
        System.arraycopy(m15524a, 0, bArr2, 0, this.f28838c);
        int i3 = this.f28838c;
        Cipher cipher = f28836a.get();
        byte[] bArr3 = new byte[this.f28839d];
        System.arraycopy(m15524a, 0, bArr3, 0, this.f28838c);
        cipher.init(1, this.f28837b, new IvParameterSpec(bArr3));
        if (cipher.doFinal(bArr, 0, length, bArr2, i3) != length) {
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
        return bArr2;
    }
}
