package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvf.class */
public final class zzfvf extends zzfts<zzfyv, zzfys> {
    public final /* synthetic */ zzfvg zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvf(zzfvg zzfvgVar, Class cls) {
        super(cls);
        this.zza = zzfvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ void zzb(zzfyv zzfyvVar) throws GeneralSecurityException {
        zzgdu.zza(zzfyvVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfyv zzc(zzgex zzgexVar) throws zzggm {
        return zzfyv.zzc(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfys zzd(zzfyv zzfyvVar) throws GeneralSecurityException {
        zzfyr zze = zzfys.zze();
        zze.zzb(zzgex.zzt(zzgds.zza(zzfyvVar.zza())));
        zze.zza(0);
        return zze.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final Map<String, zzftr<zzfyv>> zze() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_GCM_SIV", zzfvg.zzl(16, 1));
        hashMap.put("AES128_GCM_SIV_RAW", zzfvg.zzl(16, 3));
        hashMap.put("AES256_GCM_SIV", zzfvg.zzl(32, 1));
        hashMap.put("AES256_GCM_SIV_RAW", zzfvg.zzl(32, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
