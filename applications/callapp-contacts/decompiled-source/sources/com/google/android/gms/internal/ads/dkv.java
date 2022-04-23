package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkv.class */
public final class dkv implements dfx {

    /* renamed from: a  reason: collision with root package name */
    private final SecretKey f26905a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f26906b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f26907c;

    public dkv(byte[] bArr) throws GeneralSecurityException {
        dla.a(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f26905a = secretKeySpec;
        Cipher a2 = a();
        a2.init(1, secretKeySpec);
        byte[] a3 = djp.a(a2.doFinal(new byte[16]));
        this.f26906b = a3;
        this.f26907c = djp.a(a3);
    }

    private static Cipher a() throws GeneralSecurityException {
        return dkj.f26896a.a("AES/ECB/NoPadding");
    }

    @Override // com.google.android.gms.internal.ads.dfx
    public final byte[] a(byte[] bArr, int i) throws GeneralSecurityException {
        byte[] bArr2;
        if (i <= 16) {
            Cipher a2 = a();
            a2.init(1, this.f26905a);
            int max = Math.max(1, (int) Math.ceil(bArr.length / 16.0d));
            if ((max << 4) == bArr.length) {
                bArr2 = djs.a(bArr, (max - 1) << 4, this.f26906b, 0, 16);
            } else {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, (max - 1) << 4, bArr.length);
                if (copyOfRange.length < 16) {
                    byte[] copyOf = Arrays.copyOf(copyOfRange, 16);
                    copyOf[copyOfRange.length] = (byte) (-128);
                    bArr2 = djs.a(copyOf, this.f26907c);
                } else {
                    throw new IllegalArgumentException("x must be smaller than a block.");
                }
            }
            byte[] bArr3 = new byte[16];
            for (int i2 = 0; i2 < max - 1; i2++) {
                bArr3 = a2.doFinal(djs.a(bArr3, 0, bArr, i2 << 4, 16));
            }
            return Arrays.copyOf(a2.doFinal(djs.a(bArr2, bArr3)), i);
        }
        throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
    }
}
