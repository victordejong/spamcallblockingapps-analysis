package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvn.class */
public final class zzfvn implements zzftg {
    private static final byte[] zza = new byte[0];
    private final zzgau zzb;
    private final zzftg zzc;

    public zzfvn(zzgau zzgauVar, zzftg zzftgVar) {
        this.zzb = zzgauVar;
        this.zzc = zzftgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzftg
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] zzao = zzfum.zzh(this.zzb).zzao();
        byte[] zza2 = this.zzc.zza(zzao, zza);
        byte[] zza3 = ((zzftg) zzfum.zzj(this.zzb.zza(), zzao, zzftg.class)).zza(bArr, bArr2);
        int length = zza2.length;
        return ByteBuffer.allocate(length + 4 + zza3.length).putInt(length).put(zza2).put(zza3).array();
    }
}
