package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqb.class */
public final class zzeqb implements zzgpr<zzepz> {
    private final zzgqe<Clock> zza;
    private final zzgqe<zzfef> zzb;

    public zzeqb(zzgqe<Clock> zzgqeVar, zzgqe<zzfef> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzepz(this.zza.zzb(), ((zzdei) this.zzb).zza());
    }
}
