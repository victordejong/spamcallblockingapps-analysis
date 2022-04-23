package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3448cv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjj.class */
public final class zzdjj implements zzeoy<zzdgw<JSONObject>> {
    /* renamed from: a */
    public static zzdgw<JSONObject> m13577a(zzaxt zzaxtVar, Object obj, zzdhr zzdhrVar, zzdio zzdioVar, zzeos<zzdhl> zzeosVar, zzeos<zzdhv> zzeosVar2, zzeos<zzdhz> zzeosVar3, zzeos<zzdif> zzeosVar4, zzeos<zzdik> zzeosVar5, zzeos<zzdit> zzeosVar6, zzeos<zzdix> zzeosVar7, zzeos<zzdjl> zzeosVar8, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        HashSet hashSet = new HashSet();
        hashSet.add((C3448cv) obj);
        hashSet.add(zzdhrVar);
        hashSet.add(zzdioVar);
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23716N2)).booleanValue()) {
            hashSet.add(zzeosVar.get());
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23721O2)).booleanValue()) {
            hashSet.add(zzeosVar2.get());
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23726P2)).booleanValue()) {
            hashSet.add(zzeosVar3.get());
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23731Q2)).booleanValue()) {
            hashSet.add(zzeosVar4.get());
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23741S2)).booleanValue()) {
            hashSet.add(new zzdfi(zzeosVar6.get(), ((Long) zzwm.m11166e().m16921a(zzabb.f23700K1)).longValue(), scheduledExecutorService));
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23746T2)).booleanValue()) {
            hashSet.add(zzeosVar7.get());
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23751U2)).booleanValue()) {
            hashSet.add(zzeosVar8.get());
        }
        zzdgw<JSONObject> zzdgwVar = new zzdgw<>(executor, hashSet);
        zzepe.m12187a(zzdgwVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzdgwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        throw new NoSuchMethodError();
    }
}
