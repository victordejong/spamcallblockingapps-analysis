package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbh.class */
final class zzgbh extends zzfyg<zzgbw, zzgbt> {
    public zzgbh(zzgbi zzgbiVar, Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ zzgbw zza(zzgjf zzgjfVar) throws zzgkx {
        return zzgbw.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ zzgbt zzc(zzgbw zzgbwVar) throws GeneralSecurityException {
        zzgbw zzgbwVar2 = zzgbwVar;
        zzgbs zzc = zzgbt.zzc();
        zzc.zzc(0);
        zzc.zza(zzgjf.zzv(zzgig.zza(zzgbwVar2.zza())));
        zzc.zzb(zzgbwVar2.zzf());
        return zzc.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final Map<String, zzfyf<zzgbw>> zzd() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        zzgbv zzc = zzgbw.zzc();
        zzc.zza(32);
        zzgby zzc2 = zzgbz.zzc();
        zzc2.zza(16);
        zzc.zzb(zzc2.zzah());
        hashMap.put("AES_CMAC", new zzfyf(zzc.zzah(), 1));
        zzgbv zzc3 = zzgbw.zzc();
        zzc3.zza(32);
        zzgby zzc4 = zzgbz.zzc();
        zzc4.zza(16);
        zzc3.zzb(zzc4.zzah());
        hashMap.put("AES256_CMAC", new zzfyf(zzc3.zzah(), 1));
        zzgbv zzc5 = zzgbw.zzc();
        zzc5.zza(32);
        zzgby zzc6 = zzgbz.zzc();
        zzc6.zza(16);
        zzc5.zzb(zzc6.zzah());
        hashMap.put("AES256_CMAC_RAW", new zzfyf(zzc5.zzah(), 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ void zze(zzgbw zzgbwVar) throws GeneralSecurityException {
        zzgbw zzgbwVar2 = zzgbwVar;
        zzgbi.zzm(zzgbwVar2.zzf());
        zzgbi.zzn(zzgbwVar2.zza());
    }
}
