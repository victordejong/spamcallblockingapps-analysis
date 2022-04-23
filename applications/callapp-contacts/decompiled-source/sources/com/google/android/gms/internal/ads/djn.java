package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djn.class */
public final class djn implements dcn {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<Cipher> f26868a = new djq();

    /* renamed from: b  reason: collision with root package name */
    private final SecretKey f26869b;

    public djn(byte[] bArr) throws GeneralSecurityException {
        dla.a(bArr.length);
        this.f26869b = new SecretKeySpec(bArr, "AES");
    }

    @Override // com.google.android.gms.internal.ads.dcn
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length <= 2147483619) {
            byte[] bArr3 = new byte[bArr.length + 12 + 16];
            byte[] a2 = dkz.a(12);
            System.arraycopy(a2, 0, bArr3, 0, 12);
            int length = a2.length;
            AlgorithmParameterSpec gCMParameterSpec = (!dlb.a() || dlb.b() > 19) ? new GCMParameterSpec(128, a2, 0, length) : new IvParameterSpec(a2, 0, length);
            ThreadLocal<Cipher> threadLocal = f26868a;
            threadLocal.get().init(1, this.f26869b, gCMParameterSpec);
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
