package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbf.class */
public final class zzgbf {
    private final zzfxu zza;
    private final zzfxx zzb;

    public zzgbf(zzfxu zzfxuVar) {
        this.zza = zzfxuVar;
        this.zzb = null;
    }

    public zzgbf(zzfxx zzfxxVar) {
        this.zza = null;
        this.zzb = zzfxxVar;
    }

    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzfxu zzfxuVar = this.zza;
        return zzfxuVar != null ? zzfxuVar.zza(bArr, bArr2) : this.zzb.zza(bArr, bArr2);
    }
}
