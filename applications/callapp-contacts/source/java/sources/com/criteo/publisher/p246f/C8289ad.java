package com.criteo.publisher.p246f;

import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.p249i.EnumC8347a;
import com.criteo.publisher.p251j0.C8364g;
import com.criteo.publisher.p256m0.C8433g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
/* renamed from: com.criteo.publisher.f.ad */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/ad.class */
public final class C8289ad extends AbstractRunnableC8529v {

    /* renamed from: a */
    private final AbstractC8332z f29882a;

    /* renamed from: b */
    private final C8364g f29883b;

    /* renamed from: c */
    private final C8433g f29884c;

    public C8289ad(AbstractC8332z queue, C8364g api, C8433g buildConfigWrapper) {
        C18524p.m3841c(queue, "queue");
        C18524p.m3841c(api, "api");
        C18524p.m3841c(buildConfigWrapper, "buildConfigWrapper");
        this.f29882a = queue;
        this.f29883b = api;
        this.f29884c = buildConfigWrapper;
    }

    /* renamed from: a */
    private final void m25919a(Collection<? extends AbstractC8320s> collection) {
        for (AbstractC8320s abstractC8320s : collection) {
            this.f29882a.mo25720a((AbstractC8332z) abstractC8320s);
        }
    }

    @Override // com.criteo.publisher.AbstractRunnableC8529v
    /* renamed from: a */
    public final void mo25368a() {
        List<AbstractC8320s> mo25721a = this.f29882a.mo25721a(24);
        if (mo25721a.isEmpty()) {
            return;
        }
        List d = C18282n.m4125d((Collection) mo25721a);
        try {
            String m25694a = C8433g.m25694a();
            C18524p.m3849a((Object) m25694a, "buildConfigWrapper.sdkVersion");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : mo25721a) {
                Integer mo25874i = ((AbstractC8320s) obj).mo25874i();
                Integer num = mo25874i;
                if (mo25874i == null) {
                    num = Integer.valueOf(EnumC8347a.FALLBACK.m25812a());
                }
                Object obj2 = linkedHashMap.get(num);
                Object obj3 = obj2;
                if (obj2 == null) {
                    obj3 = new ArrayList();
                    linkedHashMap.put(num, obj3);
                }
                ((List) obj3).add(obj);
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(C18247ai.m4260a(linkedHashMap.size()));
            for (Object obj4 : linkedHashMap.entrySet()) {
                Map.Entry entry = (Map.Entry) obj4;
                Collection collection = (Collection) entry.getValue();
                Object key = entry.getKey();
                C18524p.m3849a(key, "it.key");
                linkedHashMap2.put(AbstractC8329y.m25846a(collection, m25694a, ((Number) key).intValue()), ((Map.Entry) obj4).getValue());
            }
            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                this.f29883b.m25790a((AbstractC8329y) entry2.getKey());
                d.removeAll((Collection) entry2.getValue());
            }
            if (!(!d.isEmpty())) {
                return;
            }
            m25919a(d);
        } catch (Throwable th) {
            if (!d.isEmpty()) {
                m25919a(d);
            }
            throw th;
        }
    }
}
