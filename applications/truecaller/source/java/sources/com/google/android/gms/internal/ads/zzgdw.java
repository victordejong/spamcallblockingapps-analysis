package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgdw.class */
public final class zzgdw extends zzgcs {
    public zzgdw(byte[] bArr) throws GeneralSecurityException {
        super(bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzgcs
    public final zzgcq zzb(byte[] bArr, int i) throws InvalidKeyException {
        return new zzgdv(bArr, i);
    }
}
