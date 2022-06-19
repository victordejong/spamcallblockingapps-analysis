package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgcv.class */
public final class zzgcv implements zzftl {
    private static final byte[] zza = new byte[0];
    private final zzgcy zzb;
    private final String zzc;
    private final byte[] zzd;
    private final zzgct zze;
    private final int zzf;

    public zzgcv(ECPublicKey eCPublicKey, byte[] bArr, String str, int i, zzgct zzgctVar) throws GeneralSecurityException {
        zzgcz.zza(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.zzb = new zzgcy(eCPublicKey);
        this.zzd = bArr;
        this.zzc = str;
        this.zzf = i;
        this.zze = zzgctVar;
    }

    @Override // com.google.android.gms.internal.ads.zzftl
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzgcx zza2 = this.zzb.zza(this.zzc, this.zzd, bArr2, this.zze.zza(), this.zzf);
        byte[] zza3 = this.zze.zzb(zza2.zzb()).zza(bArr, zza);
        byte[] zza4 = zza2.zza();
        return ByteBuffer.allocate(zza4.length + zza3.length).put(zza4).put(zza3).array();
    }
}
