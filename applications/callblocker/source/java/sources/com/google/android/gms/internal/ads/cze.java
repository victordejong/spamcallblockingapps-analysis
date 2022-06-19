package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cze.class */
final class cze {
    /* renamed from: a */
    public static byte[] m10307a(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("value must be a block.");
        }
        byte[] bArr2 = new byte[16];
        for (int i = 0; i < 16; i++) {
            bArr2[i] = (byte) ((bArr[i] << 1) & 254);
            if (i < 15) {
                bArr2[i] = (byte) (bArr2[i] | ((byte) ((bArr[i + 1] >> 7) & 1)));
            }
        }
        bArr2[15] = (byte) (bArr2[15] ^ ((byte) ((bArr[0] >> 7) & 135)));
        return bArr2;
    }
}
