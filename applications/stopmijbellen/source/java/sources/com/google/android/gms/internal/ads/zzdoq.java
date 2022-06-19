package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoq.class */
public final class zzdoq implements zzgpr<Set<String>> {
    private final zzgqe<zzdqn> zza;

    public zzdoq(zzgqe<zzdqn> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = ((zzdon) this.zza).zza().zze() != null ? Collections.singleton("banner") : Collections.emptySet();
        zzgpz.zzb(singleton);
        return singleton;
    }
}
