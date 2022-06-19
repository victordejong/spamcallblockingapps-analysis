package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfut.class */
public final class zzfut extends zzfts<zzfxr, zzfxo> {
    public final /* synthetic */ zzfuu zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfut(zzfuu zzfuuVar, Class cls) {
        super(cls);
        this.zza = zzfuuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ void zzb(zzfxr zzfxrVar) throws GeneralSecurityException {
        zzfxr zzfxrVar2 = zzfxrVar;
        zzfts<?, zzfxu> zzh = new zzfux().zzh();
        ((zzfuw) zzh).zzb(zzfxrVar2.zza());
        new zzfwx().zzh().zzb(zzfxrVar2.zzc());
        zzgdu.zza(zzfxrVar2.zza().zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfxr zzc(zzgex zzgexVar) throws zzggm {
        return zzfxr.zzd(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfxo zzd(zzfxr zzfxrVar) throws GeneralSecurityException {
        zzfxr zzfxrVar2 = zzfxrVar;
        new zzfux();
        zzfxu zzg = zzfuw.zzg(zzfxrVar2.zza());
        zzgai zzd = new zzfwx().zzh().zzd(zzfxrVar2.zzc());
        zzfxn zzf = zzfxo.zzf();
        zzf.zzb(zzg);
        zzf.zzc(zzd);
        zzf.zza(0);
        return zzf.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final Map<String, zzftr<zzfxr>> zze() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_CTR_HMAC_SHA256", zzfuu.zzk(16, 16, 32, 16, 5, 1));
        hashMap.put("AES128_CTR_HMAC_SHA256_RAW", zzfuu.zzk(16, 16, 32, 16, 5, 3));
        hashMap.put("AES256_CTR_HMAC_SHA256", zzfuu.zzk(32, 16, 32, 32, 5, 1));
        hashMap.put("AES256_CTR_HMAC_SHA256_RAW", zzfuu.zzk(32, 16, 32, 32, 5, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
