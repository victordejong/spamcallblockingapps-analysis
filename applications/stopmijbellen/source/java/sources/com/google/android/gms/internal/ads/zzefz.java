package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefz.class */
public final class zzefz implements zzgpr<zzefy> {
    private final zzgqe<Set<zzefx>> zza;
    private final zzgqe<zzfin> zzb;

    public zzefz(zzgqe<Set<zzefx>> zzgqeVar, zzgqe<zzfin> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzefy(((zzgqc) this.zza).zzb(), this.zzb.zzb());
    }
}
