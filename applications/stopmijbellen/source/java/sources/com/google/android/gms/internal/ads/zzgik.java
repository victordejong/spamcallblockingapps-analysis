package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgik.class */
public final class zzgik extends zzghg {
    public zzgik(byte[] bArr) throws GeneralSecurityException {
        super(bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzghg
    public final zzghe zzb(byte[] bArr, int i) throws InvalidKeyException {
        return new zzgij(bArr, i);
    }
}
