package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfww.class */
public final class zzfww extends zzfts<zzgal, zzgai> {
    public final /* synthetic */ zzfwx zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfww(zzfwx zzfwxVar, Class cls) {
        super(cls);
        this.zza = zzfwxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ void zzb(zzgal zzgalVar) throws GeneralSecurityException {
        zzgal zzgalVar2 = zzgalVar;
        if (zzgalVar2.zzc() >= 16) {
            zzfwx.zzn(zzgalVar2.zza());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzgal zzc(zzgex zzgexVar) throws zzggm {
        return zzgal.zzd(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzgai zzd(zzgal zzgalVar) throws GeneralSecurityException {
        zzgal zzgalVar2 = zzgalVar;
        zzgah zzf = zzgai.zzf();
        zzf.zza(0);
        zzf.zzb(zzgalVar2.zza());
        zzf.zzc(zzgex.zzt(zzgds.zza(zzgalVar2.zzc())));
        return zzf.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final Map<String, zzftr<zzgal>> zze() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("HMAC_SHA256_128BITTAG", zzfwx.zzm(32, 16, 5, 1));
        hashMap.put("HMAC_SHA256_128BITTAG_RAW", zzfwx.zzm(32, 16, 5, 3));
        hashMap.put("HMAC_SHA256_256BITTAG", zzfwx.zzm(32, 32, 5, 1));
        hashMap.put("HMAC_SHA256_256BITTAG_RAW", zzfwx.zzm(32, 32, 5, 3));
        hashMap.put("HMAC_SHA512_128BITTAG", zzfwx.zzm(64, 16, 6, 1));
        hashMap.put("HMAC_SHA512_128BITTAG_RAW", zzfwx.zzm(64, 16, 6, 3));
        hashMap.put("HMAC_SHA512_256BITTAG", zzfwx.zzm(64, 32, 6, 1));
        hashMap.put("HMAC_SHA512_256BITTAG_RAW", zzfwx.zzm(64, 32, 6, 3));
        hashMap.put("HMAC_SHA512_512BITTAG", zzfwx.zzm(64, 64, 6, 1));
        hashMap.put("HMAC_SHA512_512BITTAG_RAW", zzfwx.zzm(64, 64, 6, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
