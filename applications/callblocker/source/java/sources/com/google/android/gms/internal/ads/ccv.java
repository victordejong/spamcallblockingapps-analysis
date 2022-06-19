package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ccv.class */
public final class ccv implements dht<cag<JSONObject>> {
    /* renamed from: a */
    public static cag<JSONObject> m11480a(AbstractC3532tx abstractC3532tx, Object obj, cbc cbcVar, cca ccaVar, dhn<cav> dhnVar, dhn<cbg> dhnVar2, dhn<cbk> dhnVar3, dhn<cbq> dhnVar4, dhn<cbv> dhnVar5, dhn<ccf> dhnVar6, dhn<ccj> dhnVar7, dhn<ccx> dhnVar8, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        HashSet hashSet = new HashSet();
        hashSet.add((cbr) obj);
        hashSet.add(cbcVar);
        hashSet.add(ccaVar);
        if (((Boolean) dyx.m8158e().m7876a(edi.f16453cF)).booleanValue()) {
            hashSet.add(dhnVar.mo9430a());
        }
        if (((Boolean) dyx.m8158e().m7876a(edi.f16454cG)).booleanValue()) {
            hashSet.add(dhnVar2.mo9430a());
        }
        if (((Boolean) dyx.m8158e().m7876a(edi.f16455cH)).booleanValue()) {
            hashSet.add(dhnVar3.mo9430a());
        }
        if (((Boolean) dyx.m8158e().m7876a(edi.f16456cI)).booleanValue()) {
            hashSet.add(dhnVar4.mo9430a());
        }
        if (((Boolean) dyx.m8158e().m7876a(edi.f16458cK)).booleanValue()) {
            hashSet.add(new byp(dhnVar6.mo9430a(), ((Long) dyx.m8158e().m7876a(edi.f16398bD)).longValue(), scheduledExecutorService));
        }
        if (((Boolean) dyx.m8158e().m7876a(edi.f16459cL)).booleanValue()) {
            hashSet.add(dhnVar7.mo9430a());
        }
        if (((Boolean) dyx.m8158e().m7876a(edi.f16460cM)).booleanValue()) {
            hashSet.add(dhnVar8.mo9430a());
        }
        return (cag) dhz.m9438a(new cag(executor, hashSet), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        throw new NoSuchMethodError();
    }
}
