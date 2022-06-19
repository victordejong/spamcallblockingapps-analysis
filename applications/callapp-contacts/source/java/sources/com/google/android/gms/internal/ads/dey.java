package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dey.class */
public final class dey implements dcn {

    /* renamed from: a */
    private static final ThreadLocal<Cipher> f47027a = new dex();

    /* renamed from: b */
    private final SecretKey f47028b;

    public dey(byte[] bArr) throws GeneralSecurityException {
        dla.m16521a(bArr.length);
        this.f47028b = new SecretKeySpec(bArr, "AES");
    }

    /* renamed from: a */
    private static AlgorithmParameterSpec m16818a(byte[] bArr, int i) throws GeneralSecurityException {
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            return new GCMParameterSpec(128, bArr, 0, i);
        } catch (ClassNotFoundException e) {
            if (!dlb.m16519a()) {
                throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
            }
            return new IvParameterSpec(bArr, 0, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.dcn
    /* renamed from: a */
    public final byte[] mo16516a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length <= 2147483619) {
            byte[] bArr3 = new byte[bArr.length + 12 + 16];
            byte[] m16524a = dkz.m16524a(12);
            System.arraycopy(m16524a, 0, bArr3, 0, 12);
            AlgorithmParameterSpec m16818a = m16818a(m16524a, m16524a.length);
            ThreadLocal<Cipher> threadLocal = f47027a;
            threadLocal.get().init(1, this.f47028b, m16818a);
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
