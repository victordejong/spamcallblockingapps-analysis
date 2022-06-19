package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwr.class */
public final class zzfwr {
    private final zzftg zza;
    private final zzftj zzb;

    public zzfwr(zzftg zzftgVar) {
        this.zza = zzftgVar;
        this.zzb = null;
    }

    public zzfwr(zzftj zzftjVar) {
        this.zza = null;
        this.zzb = zzftjVar;
    }

    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzftg zzftgVar = this.zza;
        return zzftgVar != null ? zzftgVar.zza(bArr, bArr2) : this.zzb.zza(bArr, bArr2);
    }
}
