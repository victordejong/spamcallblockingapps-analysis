package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxi.class */
public final class zzcxi implements zzgpr<Set<zzdlw<zzdfl>>> {
    private final zzgqe<zzcxf> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<JSONObject> zzc;

    public zzcxi(zzgqe<zzcxf> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<JSONObject> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcxf zzb = this.zza.zzb();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        Set emptySet = this.zzc.zzb() == null ? Collections.emptySet() : Collections.singleton(new zzdlw(zzb, zzfxbVar));
        zzgpz.zzb(emptySet);
        return emptySet;
    }
}
