package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeuf.class */
public final class zzeuf implements zzgla<zzesb<JSONObject>> {
    public static zzesb<JSONObject> zza(zzcft zzcftVar, zzcfu zzcfuVar, Object obj, zzest zzestVar, zzetr zzetrVar, zzgku<zzesn> zzgkuVar, zzgku<zzesw> zzgkuVar2, zzgku<zzetc> zzgkuVar3, zzgku<zzetg> zzgkuVar4, zzgku<zzetn> zzgkuVar5, zzgku<zzetu> zzgkuVar6, zzgku<zzeum> zzgkuVar7, zzgku<zzeui> zzgkuVar8, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        HashSet hashSet = new HashSet();
        hashSet.add((zzetk) obj);
        hashSet.add(zzestVar);
        hashSet.add(zzetrVar);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdZ)).booleanValue()) {
            hashSet.add(zzgkuVar.zzb());
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzea)).booleanValue()) {
            hashSet.add(zzgkuVar2.zzb());
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzeb)).booleanValue()) {
            hashSet.add(zzgkuVar3.zzb());
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzec)).booleanValue()) {
            hashSet.add(zzgkuVar4.zzb());
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzeg)).booleanValue()) {
            hashSet.add(zzgkuVar6.zzb());
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzeh)).booleanValue()) {
            hashSet.add(zzgkuVar7.zzb());
        }
        return new zzesb<>(executor, hashSet);
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        throw null;
    }
}
