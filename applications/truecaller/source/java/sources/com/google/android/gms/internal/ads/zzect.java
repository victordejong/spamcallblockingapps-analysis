package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzect.class */
public final class zzect implements zzgla<zzecs> {
    private final zzgln<zzedb> zza;
    private final zzgln<zzg> zzb;

    public zzect(zzgln<zzedb> zzglnVar, zzgln<zzg> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzecs(((zzedc) this.zza).zzb(), ((zzfbu) this.zzb).zzb());
    }
}
