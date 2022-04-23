package com.google.android.gms.internal.ads;

import java.security.InvalidKeyException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djr.class */
final class djr extends dju {
    /* JADX INFO: Access modifiers changed from: package-private */
    public djr(byte[] bArr, int i) throws InvalidKeyException {
        super(bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dju
    public final int a() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.dju
    final int[] a(int[] iArr, int i) {
        if (iArr.length == 3) {
            int[] iArr2 = new int[16];
            dju.a(iArr2, this.f26871a);
            iArr2[12] = i;
            System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
    }
}
