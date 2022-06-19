package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeir.class */
public final class zzeir implements zzebd {
    private final zzedv zzikw;
    private final int zzikx;

    public zzeir(zzedv zzedvVar, int i) throws GeneralSecurityException {
        this.zzikw = zzedvVar;
        this.zzikx = i;
        if (i >= 10) {
            zzedvVar.zzd(new byte[0], i);
            return;
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzebd
    public final byte[] zzk(byte[] bArr) throws GeneralSecurityException {
        return this.zzikw.zzd(bArr, this.zzikx);
    }
}
