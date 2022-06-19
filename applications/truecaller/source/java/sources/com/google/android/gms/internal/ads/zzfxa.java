package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfxa.class */
public final class zzfxa implements zzfty {
    private final zzfud<zzfty> zza;
    private final byte[] zzb = {0};

    /* JADX WARN: Type inference failed for: r0v5, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r0v8, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r4v2, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.zzfty
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        return this.zza.zza().zzd() == 4 ? zzgco.zza(new byte[]{this.zza.zza().zzb(), this.zza.zza().zza().zza(zzgco.zza(new byte[]{bArr, this.zzb}))}) : zzgco.zza(new byte[]{this.zza.zza().zzb(), this.zza.zza().zza().zza(bArr)});
    }
}
