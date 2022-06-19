package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoc.class */
public final class zzeoc implements zzgla<zzeoa> {
    private final zzgln<zzfsn> zza;
    private final zzgln<Context> zzb;

    public zzeoc(zzgln<zzfsn> zzglnVar, zzgln<Context> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    /* renamed from: zza */
    public final zzeoa zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzeoa(zzfsnVar, ((zzcoo) this.zzb).zza());
    }
}
