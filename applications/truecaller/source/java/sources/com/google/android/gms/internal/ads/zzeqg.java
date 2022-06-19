package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqg.class */
public final class zzeqg implements zzgla<zzeqe> {
    private final zzgln<zzfsn> zza;
    private final zzgln<Context> zzb;
    private final zzgln<Set<String>> zzc;

    public zzeqg(zzgln<zzfsn> zzglnVar, zzgln<Context> zzglnVar2, zzgln<Set<String>> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzeqe(zzfsnVar, ((zzfbv) this.zzb).zza(), this.zzc.zzb());
    }
}
