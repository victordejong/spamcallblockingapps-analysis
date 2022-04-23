package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p131c.p161d.p170b.p224d.p252g.p253a.d60;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegk.class */
public final class zzegk implements zzdzv {

    /* renamed from: b */
    public static final ThreadLocal<Cipher> f28010b = new d60();

    /* renamed from: a */
    public final SecretKey f28011a;

    public zzegk(byte[] bArr) throws GeneralSecurityException {
        zzeht.m12548a(bArr.length);
        this.f28011a = new SecretKeySpec(bArr, "AES");
    }

    /* renamed from: a */
    public static AlgorithmParameterSpec m12579a(byte[] bArr, int i, int i2) throws GeneralSecurityException {
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            return new GCMParameterSpec(128, bArr, 0, i2);
        } catch (ClassNotFoundException e) {
            if (zzehu.m12546a()) {
                return new IvParameterSpec(bArr, 0, i2);
            }
            throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzv
    /* renamed from: a */
    public final byte[] mo12560a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length <= 2147483619) {
            byte[] bArr3 = new byte[bArr.length + 12 + 16];
            byte[] a = zzehs.m12550a(12);
            System.arraycopy(a, 0, bArr3, 0, 12);
            f28010b.get().init(1, this.f28011a, m12579a(a, 0, a.length));
            if (!(bArr2 == null || bArr2.length == 0)) {
                f28010b.get().updateAAD(bArr2);
            }
            int doFinal = f28010b.get().doFinal(bArr, 0, bArr.length, bArr3, 12);
            if (doFinal == bArr.length + 16) {
                return bArr3;
            }
            throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - bArr.length)));
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
