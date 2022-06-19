package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djk.class */
public final class djk implements dkt {

    /* renamed from: a */
    private static final ThreadLocal<Cipher> f47103a = new djj();

    /* renamed from: b */
    private final SecretKeySpec f47104b;

    /* renamed from: c */
    private final int f47105c;

    /* renamed from: d */
    private final int f47106d;

    public djk(byte[] bArr, int i) throws GeneralSecurityException {
        dla.m16521a(bArr.length);
        this.f47104b = new SecretKeySpec(bArr, "AES");
        int blockSize = f47103a.get().getBlockSize();
        this.f47106d = blockSize;
        if (i < 12 || i > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.f47105c = i;
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: a */
    public final byte[] mo16530a(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.f47105c;
        if (length > Integer.MAX_VALUE - i) {
            int i2 = this.f47105c;
            StringBuilder sb = new StringBuilder(43);
            sb.append("plaintext length can not exceed ");
            sb.append(Integer.MAX_VALUE - i2);
            throw new GeneralSecurityException(sb.toString());
        }
        byte[] bArr2 = new byte[bArr.length + i];
        byte[] m16524a = dkz.m16524a(i);
        System.arraycopy(m16524a, 0, bArr2, 0, this.f47105c);
        int length2 = bArr.length;
        int i3 = this.f47105c;
        Cipher cipher = f47103a.get();
        byte[] bArr3 = new byte[this.f47106d];
        System.arraycopy(m16524a, 0, bArr3, 0, this.f47105c);
        cipher.init(1, this.f47104b, new IvParameterSpec(bArr3));
        if (cipher.doFinal(bArr, 0, length2, bArr2, i3) != length2) {
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
        return bArr2;
    }
}
