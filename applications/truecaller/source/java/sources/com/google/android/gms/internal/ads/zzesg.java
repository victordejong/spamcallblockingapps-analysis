package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzesg.class */
public final class zzesg implements zzgla<zzesf> {
    private final zzgln<zzfsn> zza;
    private final zzgln<Context> zzb;

    public zzesg(zzgln<zzfsn> zzglnVar, zzgln<Context> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    /* renamed from: zza */
    public final zzesf zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzesf(zzfsnVar, ((zzcoo) this.zzb).zza());
    }
}
