package com.criteo.publisher.f;

import com.criteo.publisher.i.a;
import com.criteo.publisher.j0.g;
import com.criteo.publisher.v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/ad.class */
public final class ad extends v {

    /* renamed from: a  reason: collision with root package name */
    private final z f17249a;

    /* renamed from: b  reason: collision with root package name */
    private final g f17250b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.m0.g f17251c;

    public ad(z queue, g api, com.criteo.publisher.m0.g buildConfigWrapper) {
        p.c(queue, "queue");
        p.c(api, "api");
        p.c(buildConfigWrapper, "buildConfigWrapper");
        this.f17249a = queue;
        this.f17250b = api;
        this.f17251c = buildConfigWrapper;
    }

    private final void a(Collection<? extends s> collection) {
        for (s sVar : collection) {
            this.f17249a.a((z) sVar);
        }
    }

    @Override // com.criteo.publisher.v
    public final void a() {
        List<s> a2 = this.f17249a.a(24);
        if (!a2.isEmpty()) {
            List d2 = n.d((Collection) a2);
            try {
                String a3 = com.criteo.publisher.m0.g.a();
                p.a((Object) a3, "buildConfigWrapper.sdkVersion");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj : a2) {
                    Integer i = ((s) obj).i();
                    Integer num = i;
                    if (i == null) {
                        num = Integer.valueOf(a.FALLBACK.a());
                    }
                    Object obj2 = linkedHashMap.get(num);
                    Object obj3 = obj2;
                    if (obj2 == null) {
                        obj3 = new ArrayList();
                        linkedHashMap.put(num, obj3);
                    }
                    ((List) obj3).add(obj);
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(ai.a(linkedHashMap.size()));
                for (Object obj4 : linkedHashMap.entrySet()) {
                    Map.Entry entry = (Map.Entry) obj4;
                    Collection collection = (Collection) entry.getValue();
                    Object key = entry.getKey();
                    p.a(key, "it.key");
                    linkedHashMap2.put(y.a(collection, a3, ((Number) key).intValue()), ((Map.Entry) obj4).getValue());
                }
                for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                    this.f17250b.a((y) entry2.getKey());
                    d2.removeAll((Collection) entry2.getValue());
                }
                if (!d2.isEmpty()) {
                    a(d2);
                }
            } catch (Throwable th) {
                if (!d2.isEmpty()) {
                    a(d2);
                }
                throw th;
            }
        }
    }
}
