package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepj.class */
public final class zzepj implements zzgla<zzeph> {
    private final zzgln<zzfsn> zza;
    private final zzgln<ViewGroup> zzb;
    private final zzgln<Context> zzc;
    private final zzgln<Set<String>> zzd;

    public zzepj(zzgln<zzfsn> zzglnVar, zzgln<ViewGroup> zzglnVar2, zzgln<Context> zzglnVar3, zzgln<Set<String>> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzeph(zzfsnVar, ((zzcvf) this.zzb).zza(), this.zzc.zzb(), ((zzgll) this.zzd).zzb());
    }
}
