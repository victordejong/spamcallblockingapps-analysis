package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzw.class */
final class zzfzw extends zzfyg<zzgdv, zzgds> {
    public final /* synthetic */ zzfzx zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfzw(zzfzx zzfzxVar, Class cls) {
        super(cls);
        this.zza = zzfzxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ zzgdv zza(zzgjf zzgjfVar) throws zzgkx {
        return zzgdv.zzd(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ zzgds zzc(zzgdv zzgdvVar) throws GeneralSecurityException {
        zzgdr zzc = zzgds.zzc();
        zzc.zzb(0);
        zzc.zza(zzgjf.zzv(zzgig.zza(32)));
        return zzc.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final Map<String, zzfyf<zzgdv>> zzd() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("CHACHA20_POLY1305", new zzfyf(zzgdv.zzc(), 1));
        hashMap.put("CHACHA20_POLY1305_RAW", new zzfyf(zzgdv.zzc(), 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ void zze(zzgdv zzgdvVar) throws GeneralSecurityException {
    }
}
