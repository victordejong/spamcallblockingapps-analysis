package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czg.class */
final class czg extends czj {
    public czg(byte[] bArr, int i) {
        super(bArr, i);
    }

    @Override // com.google.android.gms.internal.ads.czj
    /* renamed from: a */
    public final int mo10265a() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.czj
    /* renamed from: a */
    final int[] mo10264a(int[] iArr, int i) {
        if (iArr.length != 3) {
            throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
        }
        int[] iArr2 = new int[16];
        czj.m10296a(iArr2, this.f13848a);
        iArr2[12] = i;
        System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
        return iArr2;
    }
}
