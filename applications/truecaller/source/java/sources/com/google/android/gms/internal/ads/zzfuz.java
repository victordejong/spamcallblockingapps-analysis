package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfuz.class */
public final class zzfuz extends zzfts<zzfyg, zzfyd> {
    public final /* synthetic */ zzfva zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfuz(zzfva zzfvaVar, Class cls) {
        super(cls);
        this.zza = zzfvaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ void zzb(zzfyg zzfygVar) throws GeneralSecurityException {
        zzfyg zzfygVar2 = zzfygVar;
        zzgdu.zza(zzfygVar2.zzc());
        if (zzfygVar2.zza().zza() == 12 || zzfygVar2.zza().zza() == 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfyg zzc(zzgex zzgexVar) throws zzggm {
        return zzfyg.zzd(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfyd zzd(zzfyg zzfygVar) throws GeneralSecurityException {
        zzfyg zzfygVar2 = zzfygVar;
        zzfyc zzf = zzfyd.zzf();
        zzf.zzc(zzgex.zzt(zzgds.zza(zzfygVar2.zzc())));
        zzf.zzb(zzfygVar2.zza());
        zzf.zza(0);
        return zzf.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final Map<String, zzftr<zzfyg>> zze() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_EAX", zzfva.zzk(16, 16, 1));
        hashMap.put("AES128_EAX_RAW", zzfva.zzk(16, 16, 3));
        hashMap.put("AES256_EAX", zzfva.zzk(32, 16, 1));
        hashMap.put("AES256_EAX_RAW", zzfva.zzk(32, 16, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
