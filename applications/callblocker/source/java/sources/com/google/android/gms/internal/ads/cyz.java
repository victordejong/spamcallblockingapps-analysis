package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyz.class */
public final class cyz implements dai {

    /* renamed from: a */
    private static final ThreadLocal<Cipher> f13835a = new cyy();

    /* renamed from: b */
    private final SecretKeySpec f13836b;

    /* renamed from: c */
    private final int f13837c;

    /* renamed from: d */
    private final int f13838d = f13835a.get().getBlockSize();

    public cyz(byte[] bArr, int i) {
        dao.m10263a(bArr.length);
        this.f13836b = new SecretKeySpec(bArr, "AES");
        if (i < 12 || i > this.f13838d) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.f13837c = i;
    }

    @Override // com.google.android.gms.internal.ads.dai
    /* renamed from: a */
    public final byte[] mo10274a(byte[] bArr) {
        if (bArr.length > Integer.MAX_VALUE - this.f13837c) {
            throw new GeneralSecurityException(new StringBuilder(43).append("plaintext length can not exceed ").append(Integer.MAX_VALUE - this.f13837c).toString());
        }
        byte[] bArr2 = new byte[this.f13837c + bArr.length];
        byte[] m10272a = daj.m10272a(this.f13837c);
        System.arraycopy(m10272a, 0, bArr2, 0, this.f13837c);
        int length = bArr.length;
        int i = this.f13837c;
        Cipher cipher = f13835a.get();
        byte[] bArr3 = new byte[this.f13838d];
        System.arraycopy(m10272a, 0, bArr3, 0, this.f13837c);
        cipher.init(1, this.f13836b, new IvParameterSpec(bArr3));
        if (cipher.doFinal(bArr, 0, length, bArr2, i) == length) {
            return bArr2;
        }
        throw new GeneralSecurityException("stored output's length does not match input's length");
    }
}
