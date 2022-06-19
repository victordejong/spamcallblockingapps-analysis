package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcty.class */
public final class zzcty implements zzgla<Set<zzdih<zzo>>> {
    private final zzgln<zzctq> zza;
    private final zzgln<Executor> zzb;
    private final zzgln<JSONObject> zzc;

    public zzcty(zzgln<zzctq> zzglnVar, zzgln<Executor> zzglnVar2, zzgln<JSONObject> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzctq zzb = this.zza.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        Set emptySet = this.zzc.zzb() == null ? Collections.emptySet() : Collections.singleton(new zzdih(zzb, zzfsnVar));
        zzgli.zzb(emptySet);
        return emptySet;
    }
}
