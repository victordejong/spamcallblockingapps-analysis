package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgaq.class */
final class zzgaq implements zzfxx {
    private final zzfyr<zzfxx> zza;

    public zzgaq(zzfyr<zzfxx> zzfyrVar) {
        this.zza = zzfyrVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.zzfxx
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return zzghc.zzb(new byte[]{this.zza.zzb().zzb(), this.zza.zzb().zza().zza(bArr, bArr2)});
    }
}
