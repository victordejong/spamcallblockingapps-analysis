package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czc.class */
public final class czc implements csm {

    /* renamed from: a */
    private static final ThreadLocal<Cipher> f13845a = new czf();

    /* renamed from: b */
    private final SecretKey f13846b;

    public czc(byte[] bArr) {
        dao.m10263a(bArr.length);
        this.f13846b = new SecretKeySpec(bArr, "AES");
    }

    /* renamed from: a */
    private static AlgorithmParameterSpec m10309a(byte[] bArr, int i, int i2) {
        AlgorithmParameterSpec ivParameterSpec;
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            ivParameterSpec = new GCMParameterSpec(128, bArr, 0, i2);
        } catch (ClassNotFoundException e) {
            if (!dal.m10266a()) {
                throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
            }
            ivParameterSpec = new IvParameterSpec(bArr, 0, i2);
        }
        return ivParameterSpec;
    }

    @Override // com.google.android.gms.internal.ads.csm
    /* renamed from: a */
    public final byte[] mo10254a(byte[] bArr, byte[] bArr2) {
        if (bArr.length > 2147483619) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[bArr.length + 12 + 16];
        byte[] m10272a = daj.m10272a(12);
        System.arraycopy(m10272a, 0, bArr3, 0, 12);
        f13845a.get().init(1, this.f13846b, m10309a(m10272a, 0, m10272a.length));
        if (bArr2 != null && bArr2.length != 0) {
            f13845a.get().updateAAD(bArr2);
        }
        int doFinal = f13845a.get().doFinal(bArr, 0, bArr.length, bArr3, 12);
        if (doFinal == bArr.length + 16) {
            return bArr3;
        }
        throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - bArr.length)));
    }
}
