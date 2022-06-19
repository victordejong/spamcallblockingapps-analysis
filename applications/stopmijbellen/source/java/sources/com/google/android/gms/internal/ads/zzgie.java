package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgie.class */
public final class zzgie implements zzfym {
    private final zzgbq zza;
    private final int zzb;

    public zzgie(zzgbq zzgbqVar, int i) throws GeneralSecurityException {
        this.zza = zzgbqVar;
        this.zzb = i;
        if (i >= 10) {
            zzgbqVar.zza(new byte[0], i);
            return;
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzfym
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        return this.zza.zza(bArr, this.zzb);
    }
}
