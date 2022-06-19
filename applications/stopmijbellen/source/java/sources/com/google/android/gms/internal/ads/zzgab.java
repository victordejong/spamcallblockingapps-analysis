package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgab.class */
public final class zzgab implements zzfxu {
    private static final byte[] zza = new byte[0];
    private final zzgfi zzb;
    private final zzfxu zzc;

    public zzgab(zzgfi zzgfiVar, zzfxu zzfxuVar) {
        this.zzb = zzgfiVar;
        this.zzc = zzfxuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfxu
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] zzar = zzfza.zzd(this.zzb).zzar();
        byte[] zza2 = this.zzc.zza(zzar, zza);
        byte[] zza3 = ((zzfxu) zzfza.zzh(this.zzb.zzf(), zzar, zzfxu.class)).zza(bArr, bArr2);
        int length = zza2.length;
        return ByteBuffer.allocate(length + 4 + zza3.length).putInt(length).put(zza2).put(zza3).array();
    }
}
