package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hc3.class */
final class hc3 extends bb3 {
    public hc3(byte[] bArr, int i) {
        super(bArr, i);
    }

    @Override // com.google.android.gms.internal.ads.bb3
    /* renamed from: b */
    final int[] mo14717b(int[] iArr, int i) {
        int length = iArr.length;
        if (length == 6) {
            int[] iArr2 = new int[16];
            bb3.m16415f(r0, this.f20332b);
            int[] iArr3 = {0, 0, 0, 0, iArr3[12], iArr3[13], iArr3[14], iArr3[15], 0, 0, 0, 0, iArr[0], iArr[1], iArr[2], iArr[3]};
            bb3.m16414g(iArr3);
            bb3.m16415f(iArr2, Arrays.copyOf(iArr3, 8));
            iArr2[12] = i;
            iArr2[13] = 0;
            iArr2[14] = iArr[4];
            iArr2[15] = iArr[5];
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
    }

    @Override // com.google.android.gms.internal.ads.bb3
    /* renamed from: c */
    public final int mo14716c() {
        return 24;
    }
}
