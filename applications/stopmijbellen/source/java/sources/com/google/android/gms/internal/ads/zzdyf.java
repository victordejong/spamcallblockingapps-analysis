package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyf.class */
public final class zzdyf implements zzgpr<Set<zzdlw<zzfif>>> {
    private final zzgqe<String> zza;
    private final zzgqe<Context> zzb;
    private final zzgqe<Executor> zzc;
    private final zzgqe<Map<zzfhy, zzdyh>> zzd;

    public zzdyf(zzgqe<String> zzgqeVar, zzgqe<Context> zzgqeVar2, zzgqe<Executor> zzgqeVar3, zzgqe<Map<zzfhy, zzdyh>> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set set;
        final String zza = ((zzexq) this.zza).zza();
        Context zza2 = ((zzcqr) this.zzb).zza();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        Map zzb = ((zzgpv) this.zzd).zzb();
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdv)).booleanValue()) {
            zzbay zzbayVar = new zzbay(new zzbbc(zza2));
            zzbayVar.zzb(new zzbax() { // from class: com.google.android.gms.internal.ads.zzdyg
                @Override // com.google.android.gms.internal.ads.zzbax
                public final void zza(zzbcl zzbclVar) {
                    zzbclVar.zzh(zza);
                }
            });
            set = Collections.singleton(new zzdlw(new zzdyi(zzbayVar, zzb), zzfxbVar));
        } else {
            set = Collections.emptySet();
        }
        zzgpz.zzb(set);
        return set;
    }
}
