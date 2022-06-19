package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgag.class */
final class zzgag extends zzfyg<zzggs, zzggp> {
    public final /* synthetic */ zzgah zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgag(zzgah zzgahVar, Class cls) {
        super(cls);
        this.zza = zzgahVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ zzggs zza(zzgjf zzgjfVar) throws zzgkx {
        return zzggs.zzd(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ zzggp zzc(zzggs zzggsVar) throws GeneralSecurityException {
        zzggo zzc = zzggp.zzc();
        zzc.zzb(0);
        zzc.zza(zzgjf.zzv(zzgig.zza(32)));
        return zzc.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final Map<String, zzfyf<zzggs>> zzd() throws GeneralSecurityException {
        HashMap hashMap = new HashMap();
        hashMap.put("XCHACHA20_POLY1305", new zzfyf(zzggs.zzc(), 1));
        hashMap.put("XCHACHA20_POLY1305_RAW", new zzfyf(zzggs.zzc(), 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ void zze(zzggs zzggsVar) throws GeneralSecurityException {
    }
}
