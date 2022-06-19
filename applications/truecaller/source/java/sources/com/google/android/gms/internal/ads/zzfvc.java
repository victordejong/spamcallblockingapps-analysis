package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvc.class */
public final class zzfvc extends zzfts<zzfyp, zzfym> {
    public final /* synthetic */ zzfvd zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvc(zzfvd zzfvdVar, Class cls) {
        super(cls);
        this.zza = zzfvdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ void zzb(zzfyp zzfypVar) throws GeneralSecurityException {
        zzgdu.zza(zzfypVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfyp zzc(zzgex zzgexVar) throws zzggm {
        return zzfyp.zzc(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfym zzd(zzfyp zzfypVar) throws GeneralSecurityException {
        zzfyl zze = zzfym.zze();
        zze.zzb(zzgex.zzt(zzgds.zza(zzfypVar.zza())));
        zze.zza(0);
        return zze.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final Map<String, zzftr<zzfyp>> zze() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_GCM", zzfvd.zzk(16, 1));
        hashMap.put("AES128_GCM_RAW", zzfvd.zzk(16, 3));
        hashMap.put("AES256_GCM", zzfvd.zzk(32, 1));
        hashMap.put("AES256_GCM_RAW", zzfvd.zzk(32, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
