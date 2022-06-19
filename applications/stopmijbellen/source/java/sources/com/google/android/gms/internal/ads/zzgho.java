package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgho.class */
public final class zzgho implements zzfxu {
    private final zzghz zza;
    private final zzfym zzb;

    public zzgho(zzghz zzghzVar, zzfym zzfymVar, int i) {
        this.zza = zzghzVar;
        this.zzb = zzfymVar;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.zzfxu
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] zza = this.zza.zza(bArr);
        return zzghc.zzb(new byte[]{zza, this.zzb.zza(zzghc.zzb(new byte[]{bArr2, zza, Arrays.copyOf(ByteBuffer.allocate(8).putLong(0L).array(), 8)}))});
    }
}
