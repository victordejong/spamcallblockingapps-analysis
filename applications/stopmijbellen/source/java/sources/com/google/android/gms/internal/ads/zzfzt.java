package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzt.class */
final class zzfzt extends zzfyg<zzgdj, zzgdg> {
    public final /* synthetic */ zzfzu zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfzt(zzfzu zzfzuVar, Class cls) {
        super(cls);
        this.zza = zzfzuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ zzgdj zza(zzgjf zzgjfVar) throws zzgkx {
        return zzgdj.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ zzgdg zzc(zzgdj zzgdjVar) throws GeneralSecurityException {
        zzgdf zzc = zzgdg.zzc();
        zzc.zza(zzgjf.zzv(zzgig.zza(zzgdjVar.zza())));
        zzc.zzb(0);
        return zzc.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final Map<String, zzfyf<zzgdj>> zzd() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_GCM_SIV", zzfzu.zzl(16, 1));
        hashMap.put("AES128_GCM_SIV_RAW", zzfzu.zzl(16, 3));
        hashMap.put("AES256_GCM_SIV", zzfzu.zzl(32, 1));
        hashMap.put("AES256_GCM_SIV_RAW", zzfzu.zzl(32, 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ void zze(zzgdj zzgdjVar) throws GeneralSecurityException {
        zzgii.zza(zzgdjVar.zza());
    }
}
