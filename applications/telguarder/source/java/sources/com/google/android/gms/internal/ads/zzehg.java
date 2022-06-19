package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehg.class */
public final class zzehg implements zzeio {
    private static final ThreadLocal<Cipher> zzidh = new zzehf();
    private final SecretKeySpec zziiv;
    private final int zziiw;
    private final int zziix;

    public zzehg(byte[] bArr, int i) throws GeneralSecurityException {
        zzeiv.zzfu(bArr.length);
        this.zziiv = new SecretKeySpec(bArr, "AES");
        int blockSize = zzidh.get().getBlockSize();
        this.zziix = blockSize;
        if (i < 12 || i > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.zziiw = i;
    }

    @Override // com.google.android.gms.internal.ads.zzeio
    public final byte[] zzn(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.zziiw;
        if (length > Integer.MAX_VALUE - i) {
            int i2 = this.zziiw;
            StringBuilder sb = new StringBuilder(43);
            sb.append("plaintext length can not exceed ");
            sb.append(Integer.MAX_VALUE - i2);
            throw new GeneralSecurityException(sb.toString());
        }
        byte[] bArr2 = new byte[bArr.length + i];
        byte[] zzft = zzeiu.zzft(i);
        System.arraycopy(zzft, 0, bArr2, 0, this.zziiw);
        int length2 = bArr.length;
        int i3 = this.zziiw;
        Cipher cipher = zzidh.get();
        byte[] bArr3 = new byte[this.zziix];
        System.arraycopy(zzft, 0, bArr3, 0, this.zziiw);
        cipher.init(1, this.zziiv, new IvParameterSpec(bArr3));
        if (cipher.doFinal(bArr, 0, length2, bArr2, i3) != length2) {
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
        return bArr2;
    }
}
