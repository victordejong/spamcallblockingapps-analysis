package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzghj.class */
public final class zzghj implements zzfxz {
    private static final byte[] zza = new byte[0];
    private final zzghm zzb;
    private final String zzc;
    private final byte[] zzd;
    private final zzghh zze;
    private final int zzf;

    public zzghj(ECPublicKey eCPublicKey, byte[] bArr, String str, int i, zzghh zzghhVar) throws GeneralSecurityException {
        zzghn.zzc(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.zzb = new zzghm(eCPublicKey);
        this.zzd = bArr;
        this.zzc = str;
        this.zzf = i;
        this.zze = zzghhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfxz
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzghl zza2 = this.zzb.zza(this.zzc, this.zzd, bArr2, this.zze.zza(), this.zzf);
        byte[] zza3 = this.zze.zzb(zza2.zzb()).zza(bArr, zza);
        byte[] zza4 = zza2.zza();
        return ByteBuffer.allocate(zza4.length + zza3.length).put(zza4).put(zza3).array();
    }
}
