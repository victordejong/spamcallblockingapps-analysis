package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import p131c.p161d.p170b.p224d.p252g.p253a.e60;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzege.class */
public final class zzege implements zzeam {

    /* renamed from: a */
    public final SecretKey f28000a;

    /* renamed from: b */
    public final int f28001b;

    /* renamed from: c */
    public byte[] f28002c;

    /* renamed from: d */
    public byte[] f28003d;

    public zzege(byte[] bArr, int i) throws GeneralSecurityException {
        zzeht.m12548a(bArr.length);
        if (i < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, min is 10 bytes");
        } else if (i <= 16) {
            this.f28000a = new SecretKeySpec(bArr, "AES");
            this.f28001b = i;
            Cipher a = m12583a();
            a.init(1, this.f28000a);
            byte[] a2 = e60.m27057a(a.doFinal(new byte[16]));
            this.f28002c = a2;
            this.f28003d = e60.m27057a(a2);
        } else {
            throw new InvalidAlgorithmParameterException("tag size too large, max is 16 bytes");
        }
    }

    /* renamed from: a */
    public static Cipher m12583a() throws GeneralSecurityException {
        return zzehb.f28023f.m12561a("AES/ECB/NoPadding");
    }

    @Override // com.google.android.gms.internal.ads.zzeam
    /* renamed from: a */
    public final byte[] mo12552a(byte[] bArr) throws GeneralSecurityException {
        byte[] bArr2;
        Cipher a = m12583a();
        a.init(1, this.f28000a);
        double length = bArr.length;
        Double.isNaN(length);
        int max = Math.max(1, (int) Math.ceil(length / 16.0d));
        if ((max << 4) == bArr.length) {
            bArr2 = zzegl.m12577a(bArr, (max - 1) << 4, this.f28002c, 0, 16);
        } else {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, (max - 1) << 4, bArr.length);
            if (copyOfRange.length < 16) {
                byte[] copyOf = Arrays.copyOf(copyOfRange, 16);
                copyOf[copyOfRange.length] = (byte) (-128);
                bArr2 = zzegl.m12576a(copyOf, this.f28003d);
            } else {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
        }
        byte[] bArr3 = new byte[16];
        for (int i = 0; i < max - 1; i++) {
            bArr3 = a.doFinal(zzegl.m12577a(bArr3, 0, bArr, i << 4, 16));
        }
        byte[] a2 = zzegl.m12576a(bArr2, bArr3);
        byte[] bArr4 = new byte[this.f28001b];
        System.arraycopy(a.doFinal(a2), 0, bArr4, 0, this.f28001b);
        return bArr4;
    }
}
