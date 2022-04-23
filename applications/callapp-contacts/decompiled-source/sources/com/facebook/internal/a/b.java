package com.facebook.internal.a;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t2\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u0006J\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00072\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\f\u001a\u00020\u0005J$\u0010\r\u001a\u00020\u000e2\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eJ\u0014\u0010\u0010\u001a\u00020\u00112\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u0006J\u001c\u0010\u0012\u001a\u00020\u00112\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0013\u001a\u00020\u0007J$\u0010\u0014\u001a\u00020\u00112\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u000eJ\"\u0010\u0016\u001a\u00020\u00112\f\b\u0002\u0010\n\u001a\u00060\u0005j\u0002`\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\tR*\u0010\u0003\u001a\u001e\u0012\b\u0012\u00060\u0005j\u0002`\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, d2 = {"Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;", "", "()V", "gateKeepers", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lcom/facebook/internal/gatekeeper/AppID;", "Lcom/facebook/internal/gatekeeper/GateKeeper;", "dumpGateKeepers", "", "appId", "getGateKeeper", "name", "getGateKeeperValue", "", "defaultValue", "resetCache", "", "setGateKeeper", "gateKeeper", "setGateKeeperValue", "value", "setGateKeepers", "gateKeeperList", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<String, ConcurrentHashMap<String, a>> f19803a = new ConcurrentHashMap<>();

    public final List<a> a(String appId) {
        p.d(appId, "appId");
        ConcurrentHashMap<String, a> concurrentHashMap = this.f19803a.get(appId);
        if (concurrentHashMap == null) {
            return null;
        }
        ConcurrentHashMap<String, a> concurrentHashMap2 = concurrentHashMap;
        ArrayList arrayList = new ArrayList(concurrentHashMap2.size());
        for (Map.Entry<String, a> entry : concurrentHashMap2.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    public final void a(String appId, List<a> gateKeeperList) {
        p.d(appId, "appId");
        p.d(gateKeeperList, "gateKeeperList");
        ConcurrentHashMap<String, a> concurrentHashMap = new ConcurrentHashMap<>();
        for (a aVar : gateKeeperList) {
            concurrentHashMap.put(aVar.f19801a, aVar);
        }
        this.f19803a.put(appId, concurrentHashMap);
    }
}
