package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzext.class */
public final class zzext implements zzgpr<zzevq<JSONObject>> {
    public static zzevq<JSONObject> zza(zzchz zzchzVar, zzcia zzciaVar, Object obj, zzewi zzewiVar, zzexg zzexgVar, zzgpl<zzewc> zzgplVar, zzgpl<zzewl> zzgplVar2, zzgpl<zzewr> zzgplVar3, zzgpl<zzewv> zzgplVar4, zzgpl<zzexc> zzgplVar5, zzgpl<zzexj> zzgplVar6, zzgpl<zzeya> zzgplVar7, zzgpl<zzexw> zzgplVar8, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        HashSet hashSet = new HashSet();
        hashSet.add((zzewz) obj);
        hashSet.add(zzewiVar);
        hashSet.add(zzexgVar);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeg)).booleanValue()) {
            hashSet.add(zzgplVar.zzb());
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeh)).booleanValue()) {
            hashSet.add(zzgplVar2.zzb());
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzei)).booleanValue()) {
            hashSet.add(zzgplVar3.zzb());
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzej)).booleanValue()) {
            hashSet.add(zzgplVar4.zzb());
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzen)).booleanValue()) {
            hashSet.add(zzgplVar6.zzb());
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeo)).booleanValue()) {
            hashSet.add(zzgplVar7.zzb());
        }
        return new zzevq<>(executor, hashSet);
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        throw null;
    }
}
