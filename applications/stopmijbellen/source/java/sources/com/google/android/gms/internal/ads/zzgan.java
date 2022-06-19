package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgan.class */
final class zzgan extends zzfyg<zzgdp, zzgdm> {
    public final /* synthetic */ zzgao zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgan(zzgao zzgaoVar, Class cls) {
        super(cls);
        this.zza = zzgaoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ zzgdp zza(zzgjf zzgjfVar) throws zzgkx {
        return zzgdp.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ zzgdm zzc(zzgdp zzgdpVar) throws GeneralSecurityException {
        zzgdl zzc = zzgdm.zzc();
        zzc.zza(zzgjf.zzv(zzgig.zza(zzgdpVar.zza())));
        zzc.zzb(0);
        return zzc.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final Map<String, zzfyf<zzgdp>> zzd() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        zzgdo zzc = zzgdp.zzc();
        zzc.zza(64);
        hashMap.put("AES256_SIV", new zzfyf(zzc.zzah(), 1));
        zzgdo zzc2 = zzgdp.zzc();
        zzc2.zza(64);
        hashMap.put("AES256_SIV_RAW", new zzfyf(zzc2.zzah(), 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ void zze(zzgdp zzgdpVar) throws GeneralSecurityException {
        zzgdp zzgdpVar2 = zzgdpVar;
        if (zzgdpVar2.zza() == 64) {
            return;
        }
        int zza = zzgdpVar2.zza();
        StringBuilder sb = new StringBuilder(61);
        sb.append("invalid key size: ");
        sb.append(zza);
        sb.append(". Valid keys must have 64 bytes.");
        throw new InvalidAlgorithmParameterException(sb.toString());
    }
}
