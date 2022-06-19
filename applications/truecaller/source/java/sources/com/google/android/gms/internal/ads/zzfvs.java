package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvs.class */
public final class zzfvs extends zzfts<zzgce, zzgcb> {
    public final /* synthetic */ zzfvt zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvs(zzfvt zzfvtVar, Class cls) {
        super(cls);
        this.zza = zzfvtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ void zzb(zzgce zzgceVar) throws GeneralSecurityException {
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzgce zzc(zzgex zzgexVar) throws zzggm {
        return zzgce.zza(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzgcb zzd(zzgce zzgceVar) throws GeneralSecurityException {
        zzgca zze = zzgcb.zze();
        zze.zza(0);
        zze.zzb(zzgex.zzt(zzgds.zza(32)));
        return zze.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final Map<String, zzftr<zzgce>> zze() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("XCHACHA20_POLY1305", new zzftr(zzgce.zzc(), 1));
        hashMap.put("XCHACHA20_POLY1305_RAW", new zzftr(zzgce.zzc(), 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
