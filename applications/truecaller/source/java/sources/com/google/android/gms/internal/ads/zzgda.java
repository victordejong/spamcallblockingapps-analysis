package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgda.class */
public final class zzgda implements zzftg {
    private final zzgdl zza;
    private final zzfty zzb;

    public zzgda(zzgdl zzgdlVar, zzfty zzftyVar, int i) {
        this.zza = zzgdlVar;
        this.zzb = zzftyVar;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.zzftg
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] zza = this.zza.zza(bArr);
        return zzgco.zza(new byte[]{zza, this.zzb.zza(zzgco.zza(new byte[]{bArr2, zza, Arrays.copyOf(ByteBuffer.allocate(8).putLong(0L).array(), 8)}))});
    }
}
