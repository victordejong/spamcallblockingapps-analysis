package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzghf.class */
public final class zzghf extends zzghg {
    public zzghf(byte[] bArr) throws GeneralSecurityException {
        super(bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzghg
    public final zzghe zzb(byte[] bArr, int i) throws InvalidKeyException {
        return new zzghd(bArr, i);
    }
}
