package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djn.class */
public final class djn implements dcn {

    /* renamed from: a */
    private static final ThreadLocal<Cipher> f47113a = new djq();

    /* renamed from: b */
    private final SecretKey f47114b;

    public djn(byte[] bArr) throws GeneralSecurityException {
        dla.m16521a(bArr.length);
        this.f47114b = new SecretKeySpec(bArr, "AES");
    }

    @Override // com.google.android.gms.internal.ads.dcn
    /* renamed from: a */
    public final byte[] mo16516a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length <= 2147483619) {
            byte[] bArr3 = new byte[bArr.length + 12 + 16];
            byte[] m16524a = dkz.m16524a(12);
            System.arraycopy(m16524a, 0, bArr3, 0, 12);
            int length = m16524a.length;
            IvParameterSpec gCMParameterSpec = (!dlb.m16519a() || dlb.m16518b() > 19) ? new GCMParameterSpec(128, m16524a, 0, length) : new IvParameterSpec(m16524a, 0, length);
            ThreadLocal<Cipher> threadLocal = f47113a;
            threadLocal.get().init(1, this.f47114b, gCMParameterSpec);
            if (bArr2 != null && bArr2.length != 0) {
                threadLocal.get().updateAAD(bArr2);
            }
            int doFinal = threadLocal.get().doFinal(bArr, 0, bArr.length, bArr3, 12);
            if (doFinal != bArr.length + 16) {
                throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - bArr.length)));
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
