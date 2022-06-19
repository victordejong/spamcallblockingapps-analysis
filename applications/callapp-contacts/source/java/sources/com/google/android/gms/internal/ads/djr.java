package com.google.android.gms.internal.ads;

import java.security.InvalidKeyException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djr.class */
final class djr extends dju {
    public djr(byte[] bArr, int i) throws InvalidKeyException {
        super(bArr, i);
    }

    @Override // com.google.android.gms.internal.ads.dju
    /* renamed from: a */
    public final int mo16515a() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.dju
    /* renamed from: a */
    final int[] mo16514a(int[] iArr, int i) {
        if (iArr.length == 3) {
            int[] iArr2 = new int[16];
            dju.m16554a(iArr2, this.f47116a);
            iArr2[12] = i;
            System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
    }
}
