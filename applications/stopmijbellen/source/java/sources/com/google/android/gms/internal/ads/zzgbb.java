package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbb.class */
final class zzgbb implements zzfxz {
    public final zzfyr<zzfxz> zza;

    public zzgbb(zzfyr<zzfxz> zzfyrVar) {
        this.zza = zzfyrVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.zzfxz
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return zzghc.zzb(new byte[]{this.zza.zzb().zzb(), this.zza.zzb().zza().zza(bArr, bArr2)});
    }
}
