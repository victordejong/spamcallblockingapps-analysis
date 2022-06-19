package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwc.class */
public final class zzfwc implements zzftj {
    private final zzfud<zzftj> zza;

    public zzfwc(zzfud<zzftj> zzfudVar) {
        this.zza = zzfudVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.zzftj
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return zzgco.zza(new byte[]{this.zza.zza().zzb(), this.zza.zza().zza().zza(bArr, bArr2)});
    }
}
