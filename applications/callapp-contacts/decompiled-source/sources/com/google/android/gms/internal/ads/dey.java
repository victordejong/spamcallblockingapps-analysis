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

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<Cipher> f26788a = new dex();

    /* renamed from: b  reason: collision with root package name */
    private final SecretKey f26789b;

    public dey(byte[] bArr) throws GeneralSecurityException {
        dla.a(bArr.length);
        this.f26789b = new SecretKeySpec(bArr, "AES");
    }

    private static AlgorithmParameterSpec a(byte[] bArr, int i) throws GeneralSecurityException {
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            return new GCMParameterSpec(128, bArr, 0, i);
        } catch (ClassNotFoundException e) {
            if (dlb.a()) {
                return new IvParameterSpec(bArr, 0, i);
            }
            throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
        }
    }

    @Override // com.google.android.gms.internal.ads.dcn
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length <= 2147483619) {
            byte[] bArr3 = new byte[bArr.length + 12 + 16];
            byte[] a2 = dkz.a(12);
            System.arraycopy(a2, 0, bArr3, 0, 12);
            AlgorithmParameterSpec a3 = a(a2, a2.length);
            ThreadLocal<Cipher> threadLocal = f26788a;
            threadLocal.get().init(1, this.f26789b, a3);
            if (!(bArr2 == null || bArr2.length == 0)) {
                threadLocal.get().updateAAD(bArr2);
            }
            int doFinal = threadLocal.get().doFinal(bArr, 0, bArr.length, bArr3, 12);
            if (doFinal == bArr.length + 16) {
                return bArr3;
            }
            throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - bArr.length)));
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
