package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzq.class */
final class zzfzq extends zzfyg<zzgdd, zzgda> {
    public final /* synthetic */ zzfzr zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfzq(zzfzr zzfzrVar, Class cls) {
        super(cls);
        this.zza = zzfzrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ zzgdd zza(zzgjf zzgjfVar) throws zzgkx {
        return zzgdd.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ zzgda zzc(zzgdd zzgddVar) throws GeneralSecurityException {
        zzgcz zzc = zzgda.zzc();
        zzc.zza(zzgjf.zzv(zzgig.zza(zzgddVar.zza())));
        zzc.zzb(0);
        return zzc.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final Map<String, zzfyf<zzgdd>> zzd() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_GCM", zzfzr.zzk(16, 1));
        hashMap.put("AES128_GCM_RAW", zzfzr.zzk(16, 3));
        hashMap.put("AES256_GCM", zzfzr.zzk(32, 1));
        hashMap.put("AES256_GCM_RAW", zzfzr.zzk(32, 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ void zze(zzgdd zzgddVar) throws GeneralSecurityException {
        zzgii.zza(zzgddVar.zza());
    }
}
