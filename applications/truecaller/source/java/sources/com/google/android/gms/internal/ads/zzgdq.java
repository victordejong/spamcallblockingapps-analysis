package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgdq.class */
public final class zzgdq implements zzfty {
    private final zzfxc zza;
    private final int zzb;

    public zzgdq(zzfxc zzfxcVar, int i) throws GeneralSecurityException {
        this.zza = zzfxcVar;
        this.zzb = i;
        if (i >= 10) {
            zzfxcVar.zza(new byte[0], i);
            return;
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzfty
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        return this.zza.zza(bArr, this.zzb);
    }
}
