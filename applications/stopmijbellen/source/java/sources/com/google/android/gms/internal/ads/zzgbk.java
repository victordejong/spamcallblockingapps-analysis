package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbk.class */
public final class zzgbk extends zzfyg<zzgez, zzgew> {
    public final /* synthetic */ zzgbl zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgbk(zzgbl zzgblVar, Class cls) {
        super(cls);
        this.zza = zzgblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ zzgez zza(zzgjf zzgjfVar) throws zzgkx {
        return zzgez.zzf(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ zzgew zzc(zzgez zzgezVar) throws GeneralSecurityException {
        zzgez zzgezVar2 = zzgezVar;
        zzgev zzc = zzgew.zzc();
        zzc.zzc(0);
        zzc.zzb(zzgezVar2.zzg());
        zzc.zza(zzgjf.zzv(zzgig.zza(zzgezVar2.zza())));
        return zzc.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final Map<String, zzfyf<zzgez>> zzd() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("HMAC_SHA256_128BITTAG", zzgbl.zzm(32, 16, 5, 1));
        hashMap.put("HMAC_SHA256_128BITTAG_RAW", zzgbl.zzm(32, 16, 5, 3));
        hashMap.put("HMAC_SHA256_256BITTAG", zzgbl.zzm(32, 32, 5, 1));
        hashMap.put("HMAC_SHA256_256BITTAG_RAW", zzgbl.zzm(32, 32, 5, 3));
        hashMap.put("HMAC_SHA512_128BITTAG", zzgbl.zzm(64, 16, 6, 1));
        hashMap.put("HMAC_SHA512_128BITTAG_RAW", zzgbl.zzm(64, 16, 6, 3));
        hashMap.put("HMAC_SHA512_256BITTAG", zzgbl.zzm(64, 32, 6, 1));
        hashMap.put("HMAC_SHA512_256BITTAG_RAW", zzgbl.zzm(64, 32, 6, 3));
        hashMap.put("HMAC_SHA512_512BITTAG", zzgbl.zzm(64, 64, 6, 1));
        hashMap.put("HMAC_SHA512_512BITTAG_RAW", zzgbl.zzm(64, 64, 6, 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ void zze(zzgez zzgezVar) throws GeneralSecurityException {
        zzgez zzgezVar2 = zzgezVar;
        if (zzgezVar2.zza() >= 16) {
            zzgbl.zzn(zzgezVar2.zzg());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }
}
