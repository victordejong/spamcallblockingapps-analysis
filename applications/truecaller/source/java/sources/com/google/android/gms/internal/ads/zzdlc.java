package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdlc.class */
public final class zzdlc implements zzgla<Set<String>> {
    private final zzgln<zzdmx> zza;

    public zzdlc(zzgln<zzdmx> zzglnVar) {
        this.zza = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = ((zzdkz) this.zza).zza().zzd() != null ? Collections.singleton("banner") : Collections.emptySet();
        zzgli.zzb(singleton);
        return singleton;
    }
}
