package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ab3.class */
final class ab3 extends bb3 {
    public ab3(byte[] bArr, int i) {
        super(bArr, i);
    }

    @Override // com.google.android.gms.internal.ads.bb3
    /* renamed from: b */
    final int[] mo14717b(int[] iArr, int i) {
        int length = iArr.length;
        if (length == 3) {
            int[] iArr2 = new int[16];
            bb3.m16415f(iArr2, this.f20332b);
            iArr2[12] = i;
            System.arraycopy(iArr, 0, iArr2, 13, 3);
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
    }

    @Override // com.google.android.gms.internal.ads.bb3
    /* renamed from: c */
    public final int mo14716c() {
        return 12;
    }
}
