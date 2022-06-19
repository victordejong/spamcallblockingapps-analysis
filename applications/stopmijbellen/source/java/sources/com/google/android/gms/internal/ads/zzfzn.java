package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzn.class */
final class zzfzn extends zzfyg<zzgcu, zzgcr> {
    public final /* synthetic */ zzfzo zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfzn(zzfzo zzfzoVar, Class cls) {
        super(cls);
        this.zza = zzfzoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ zzgcu zza(zzgjf zzgjfVar) throws zzgkx {
        return zzgcu.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ zzgcr zzc(zzgcu zzgcuVar) throws GeneralSecurityException {
        zzgcu zzgcuVar2 = zzgcuVar;
        zzgcq zzc = zzgcr.zzc();
        zzc.zza(zzgjf.zzv(zzgig.zza(zzgcuVar2.zza())));
        zzc.zzb(zzgcuVar2.zzf());
        zzc.zzc(0);
        return zzc.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final Map<String, zzfyf<zzgcu>> zzd() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_EAX", zzfzo.zzk(16, 16, 1));
        hashMap.put("AES128_EAX_RAW", zzfzo.zzk(16, 16, 3));
        hashMap.put("AES256_EAX", zzfzo.zzk(32, 16, 1));
        hashMap.put("AES256_EAX_RAW", zzfzo.zzk(32, 16, 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ void zze(zzgcu zzgcuVar) throws GeneralSecurityException {
        zzgcu zzgcuVar2 = zzgcuVar;
        zzgii.zza(zzgcuVar2.zza());
        if (zzgcuVar2.zzf().zza() == 12 || zzgcuVar2.zzf().zza() == 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }
}
