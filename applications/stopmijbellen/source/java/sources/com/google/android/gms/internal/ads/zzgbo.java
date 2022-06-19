package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbo.class */
final class zzgbo implements zzfym {
    private final zzfyr<zzfym> zza;
    private final byte[] zzb = {0};

    /* JADX WARN: Type inference failed for: r0v5, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r0v8, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r4v2, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.zzfym
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        return this.zza.zzb().zzd() == 4 ? zzghc.zzb(new byte[]{this.zza.zzb().zzb(), this.zza.zzb().zza().zza(zzghc.zzb(new byte[]{bArr, this.zzb}))}) : zzghc.zzb(new byte[]{this.zza.zzb().zzb(), this.zza.zzb().zza().zza(bArr)});
    }
}
