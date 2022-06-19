package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wa3.class */
public final class wa3 implements i13 {

    /* renamed from: a */
    private static final ThreadLocal<Cipher> f31493a = new va3();

    /* renamed from: b */
    private final SecretKey f31494b;

    public wa3(byte[] bArr) {
        if (a43.m16694a(2)) {
            gc3.m14964a(bArr.length);
            this.f31494b = new SecretKeySpec(bArr, "AES");
            return;
        }
        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
    }

    @Override // com.google.android.gms.internal.ads.i13
    /* renamed from: a */
    public final byte[] mo8531a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length <= 2147483619) {
            byte[] bArr3 = new byte[length + 28];
            byte[] m15524a = ec3.m15524a(12);
            System.arraycopy(m15524a, 0, bArr3, 0, 12);
            int length2 = m15524a.length;
            IvParameterSpec gCMParameterSpec = (!fc3.m15282a() || fc3.m15281b() > 19) ? new GCMParameterSpec(128, m15524a, 0, length2) : new IvParameterSpec(m15524a, 0, length2);
            ThreadLocal<Cipher> threadLocal = f31493a;
            threadLocal.get().init(1, this.f31494b, gCMParameterSpec);
            int doFinal = threadLocal.get().doFinal(bArr, 0, length, bArr3, 12);
            if (doFinal != length + 16) {
                throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - length)));
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
