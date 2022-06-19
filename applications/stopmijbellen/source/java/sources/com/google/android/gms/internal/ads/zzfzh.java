package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzh.class */
final class zzfzh extends zzfyg<zzgcf, zzgcc> {
    public final /* synthetic */ zzfzi zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfzh(zzfzi zzfziVar, Class cls) {
        super(cls);
        this.zza = zzfziVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ zzgcf zza(zzgjf zzgjfVar) throws zzgkx {
        return zzgcf.zzd(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ zzgcc zzc(zzgcf zzgcfVar) throws GeneralSecurityException {
        zzgcf zzgcfVar2 = zzgcfVar;
        new zzfzl();
        zzgci zzg = zzfzk.zzg(zzgcfVar2.zze());
        zzgew zzc = new zzgbl().zza().zzc(zzgcfVar2.zzf());
        zzgcb zzc2 = zzgcc.zzc();
        zzc2.zza(zzg);
        zzc2.zzb(zzc);
        zzc2.zzc(0);
        return zzc2.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final Map<String, zzfyf<zzgcf>> zzd() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_CTR_HMAC_SHA256", zzfzi.zzk(16, 16, 32, 16, 5, 1));
        hashMap.put("AES128_CTR_HMAC_SHA256_RAW", zzfzi.zzk(16, 16, 32, 16, 5, 3));
        hashMap.put("AES256_CTR_HMAC_SHA256", zzfzi.zzk(32, 16, 32, 32, 5, 1));
        hashMap.put("AES256_CTR_HMAC_SHA256_RAW", zzfzi.zzk(32, 16, 32, 32, 5, 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ void zze(zzgcf zzgcfVar) throws GeneralSecurityException {
        zzgcf zzgcfVar2 = zzgcfVar;
        zzfyg<?, zzgci> zza = new zzfzl().zza();
        ((zzfzk) zza).zze(zzgcfVar2.zze());
        new zzgbl().zza().zze(zzgcfVar2.zzf());
        zzgii.zza(zzgcfVar2.zze().zza());
    }
}
