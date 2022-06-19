package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvz.class */
public final class zzfvz extends zzfts<zzfzb, zzfyy> {
    public final /* synthetic */ zzfwa zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvz(zzfwa zzfwaVar, Class cls) {
        super(cls);
        this.zza = zzfwaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ void zzb(zzfzb zzfzbVar) throws GeneralSecurityException {
        zzfzb zzfzbVar2 = zzfzbVar;
        if (zzfzbVar2.zza() == 64) {
            return;
        }
        throw new InvalidAlgorithmParameterException(C22128a.m8686M1(61, "invalid key size: ", zzfzbVar2.zza(), ". Valid keys must have 64 bytes."));
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfzb zzc(zzgex zzgexVar) throws zzggm {
        return zzfzb.zzc(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzfyy zzd(zzfzb zzfzbVar) throws GeneralSecurityException {
        zzfyx zze = zzfyy.zze();
        zze.zzb(zzgex.zzt(zzgds.zza(zzfzbVar.zza())));
        zze.zza(0);
        return zze.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final Map<String, zzftr<zzfzb>> zze() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        zzfza zzd = zzfzb.zzd();
        zzd.zza(64);
        hashMap.put("AES256_SIV", new zzftr(zzd.zzah(), 1));
        zzfza zzd2 = zzfzb.zzd();
        zzd2.zza(64);
        hashMap.put("AES256_SIV_RAW", new zzftr(zzd2.zzah(), 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
