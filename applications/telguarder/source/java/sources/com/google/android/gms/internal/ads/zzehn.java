package com.google.android.gms.internal.ads;

import java.security.InvalidKeyException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehn.class */
final class zzehn extends zzehq {
    public zzehn(byte[] bArr, int i) throws InvalidKeyException {
        super(bArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzehq
    final int[] zzb(int[] iArr, int i) {
        if (iArr.length == 3) {
            int[] iArr2 = new int[16];
            zzehq.zza(iArr2, this.zzije);
            iArr2[12] = i;
            System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
    }

    @Override // com.google.android.gms.internal.ads.zzehq
    public final int zzbfp() {
        return 12;
    }
}
