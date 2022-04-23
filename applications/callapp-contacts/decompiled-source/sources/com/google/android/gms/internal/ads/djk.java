package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djk.class */
public final class djk implements dkt {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<Cipher> f26860a = new djj();

    /* renamed from: b  reason: collision with root package name */
    private final SecretKeySpec f26861b;

    /* renamed from: c  reason: collision with root package name */
    private final int f26862c;

    /* renamed from: d  reason: collision with root package name */
    private final int f26863d;

    public djk(byte[] bArr, int i) throws GeneralSecurityException {
        dla.a(bArr.length);
        this.f26861b = new SecretKeySpec(bArr, "AES");
        int blockSize = f26860a.get().getBlockSize();
        this.f26863d = blockSize;
        if (i < 12 || i > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.f26862c = i;
    }

    @Override // com.google.android.gms.internal.ads.dkt
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.f26862c;
        if (length <= Integer.MAX_VALUE - i) {
            byte[] bArr2 = new byte[bArr.length + i];
            byte[] a2 = dkz.a(i);
            System.arraycopy(a2, 0, bArr2, 0, this.f26862c);
            int length2 = bArr.length;
            int i2 = this.f26862c;
            Cipher cipher = f26860a.get();
            byte[] bArr3 = new byte[this.f26863d];
            System.arraycopy(a2, 0, bArr3, 0, this.f26862c);
            cipher.init(1, this.f26861b, new IvParameterSpec(bArr3));
            if (cipher.doFinal(bArr, 0, length2, bArr2, i2) == length2) {
                return bArr2;
            }
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
        int i3 = this.f26862c;
        StringBuilder sb = new StringBuilder(43);
        sb.append("plaintext length can not exceed ");
        sb.append(Integer.MAX_VALUE - i3);
        throw new GeneralSecurityException(sb.toString());
    }
}
