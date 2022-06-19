package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgcu.class */
public final class zzgcu implements zzftk {
    private final ECPrivateKey zza;
    private final zzgcw zzb;
    private final String zzc;
    private final byte[] zzd;
    private final zzgct zze;

    public zzgcu(ECPrivateKey eCPrivateKey, byte[] bArr, String str, int i, zzgct zzgctVar) throws GeneralSecurityException {
        this.zza = eCPrivateKey;
        this.zzb = new zzgcw(eCPrivateKey);
        this.zzd = bArr;
        this.zzc = str;
        this.zze = zzgctVar;
    }
}
