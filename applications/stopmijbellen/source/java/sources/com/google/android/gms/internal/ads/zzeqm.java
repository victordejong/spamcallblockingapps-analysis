package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqm.class */
public final class zzeqm implements zzgpr<zzeql> {
    private final zzgqe<Set<String>> zza;

    public zzeqm(zzgqe<Set<String>> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeql(this.zza.zzb());
    }
}
