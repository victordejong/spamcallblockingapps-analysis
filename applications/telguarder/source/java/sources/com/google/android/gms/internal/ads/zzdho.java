package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdho.class */
public final class zzdho implements zzeqb<zzdfl<JSONObject>> {
    public static zzdfl<JSONObject> zza(zzayg zzaygVar, Object obj, zzdgc zzdgcVar, zzdhd zzdhdVar, zzepv<zzdfw> zzepvVar, zzepv<zzdgg> zzepvVar2, zzepv<zzdgk> zzepvVar3, zzepv<zzdgq> zzepvVar4, zzepv<zzdgz> zzepvVar5, zzepv<zzdhe> zzepvVar6, zzepv<zzdhq> zzepvVar7, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        HashSet hashSet = new HashSet();
        hashSet.add((zzdgv) obj);
        hashSet.add(zzdgcVar);
        hashSet.add(zzdhdVar);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwx)).booleanValue()) {
            hashSet.add(zzepvVar.get());
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwy)).booleanValue()) {
            hashSet.add(zzepvVar2.get());
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwz)).booleanValue()) {
            hashSet.add(zzepvVar3.get());
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxa)).booleanValue()) {
            hashSet.add(zzepvVar4.get());
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxf)).booleanValue()) {
            hashSet.add(zzepvVar6.get());
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxg)).booleanValue()) {
            hashSet.add(zzepvVar7.get());
        }
        return (zzdfl) zzeqh.zza(new zzdfl(executor, hashSet), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        throw new NoSuchMethodError();
    }
}
