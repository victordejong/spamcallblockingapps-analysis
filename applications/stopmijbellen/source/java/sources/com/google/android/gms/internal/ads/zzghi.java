package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzghi.class */
public final class zzghi implements zzfxy {
    private final ECPrivateKey zza;
    private final zzghk zzb;
    private final String zzc;
    private final byte[] zzd;
    private final zzghh zze;

    public zzghi(ECPrivateKey eCPrivateKey, byte[] bArr, String str, int i, zzghh zzghhVar) throws GeneralSecurityException {
        this.zza = eCPrivateKey;
        this.zzb = new zzghk(eCPrivateKey);
        this.zzd = bArr;
        this.zzc = str;
        this.zze = zzghhVar;
    }
}
