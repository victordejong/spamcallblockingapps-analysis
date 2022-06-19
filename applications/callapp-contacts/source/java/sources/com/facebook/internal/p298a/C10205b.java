package com.facebook.internal.p298a;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t2\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u0006J\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00072\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\f\u001a\u00020\u0005J$\u0010\r\u001a\u00020\u000e2\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eJ\u0014\u0010\u0010\u001a\u00020\u00112\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u0006J\u001c\u0010\u0012\u001a\u00020\u00112\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0013\u001a\u00020\u0007J$\u0010\u0014\u001a\u00020\u00112\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u000eJ\"\u0010\u0016\u001a\u00020\u00112\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\tR*\u0010\u0003\u001a\u001e\u0012\b\u0012\u00060\u0005j\u0002`\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, m4298d2 = {"Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;", "", "()V", "gateKeepers", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lcom/facebook/internal/gatekeeper/AppID;", "Lcom/facebook/internal/gatekeeper/GateKeeper;", "dumpGateKeepers", "", "appId", "getGateKeeper", "name", "getGateKeeperValue", "", "defaultValue", "resetCache", "", "setGateKeeper", "gateKeeper", "setGateKeeperValue", "value", "setGateKeepers", "gateKeeperList", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.a.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/a/b.class */
public final class C10205b {

    /* renamed from: a */
    private final ConcurrentHashMap<String, ConcurrentHashMap<String, C10204a>> f33641a = new ConcurrentHashMap<>();

    /* renamed from: a */
    public final List<C10204a> m23264a(String appId) {
        C18524p.m3840d(appId, "appId");
        ConcurrentHashMap<String, C10204a> concurrentHashMap = this.f33641a.get(appId);
        if (concurrentHashMap != null) {
            ConcurrentHashMap<String, C10204a> concurrentHashMap2 = concurrentHashMap;
            ArrayList arrayList = new ArrayList(concurrentHashMap2.size());
            for (Map.Entry<String, C10204a> entry : concurrentHashMap2.entrySet()) {
                arrayList.add(entry.getValue());
            }
            return arrayList;
        }
        return null;
    }

    /* renamed from: a */
    public final void m23263a(String appId, List<C10204a> gateKeeperList) {
        C18524p.m3840d(appId, "appId");
        C18524p.m3840d(gateKeeperList, "gateKeeperList");
        ConcurrentHashMap<String, C10204a> concurrentHashMap = new ConcurrentHashMap<>();
        for (C10204a c10204a : gateKeeperList) {
            concurrentHashMap.put(c10204a.f33639a, c10204a);
        }
        this.f33641a.put(appId, concurrentHashMap);
    }
}
