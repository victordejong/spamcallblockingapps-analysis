package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z33.class */
public final class z33 implements i13 {

    /* renamed from: a */
    private static final ThreadLocal<Cipher> f32805a = new y33();

    /* renamed from: b */
    private final SecretKey f32806b;

    public z33(byte[] bArr) {
        gc3.m14964a(bArr.length);
        this.f32806b = new SecretKeySpec(bArr, "AES");
    }

    @Override // com.google.android.gms.internal.ads.i13
    /* renamed from: a */
    public final byte[] mo8531a(byte[] bArr, byte[] bArr2) {
        AlgorithmParameterSpec algorithmParameterSpec;
        int length = bArr.length;
        if (length <= 2147483619) {
            byte[] bArr3 = new byte[length + 28];
            byte[] m15524a = ec3.m15524a(12);
            System.arraycopy(m15524a, 0, bArr3, 0, 12);
            int length2 = m15524a.length;
            try {
                Class.forName("javax.crypto.spec.GCMParameterSpec");
                algorithmParameterSpec = new GCMParameterSpec(128, m15524a, 0, length2);
            } catch (ClassNotFoundException e) {
                if (!fc3.m15282a()) {
                    throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
                }
                algorithmParameterSpec = new IvParameterSpec(m15524a, 0, length2);
            }
            ThreadLocal<Cipher> threadLocal = f32805a;
            threadLocal.get().init(1, this.f32806b, algorithmParameterSpec);
            int doFinal = threadLocal.get().doFinal(bArr, 0, length, bArr3, 12);
            if (doFinal != length + 16) {
                throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - length)));
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
