package p193e.p194a.p294b.p295a.p321e;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import s1.z.c.l;
/* renamed from: e.a.b.a.e.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/e/d.class */
public final class C7777d implements AbstractC7775b {

    /* renamed from: a */
    public final AbstractC19462a f24236a;

    public C7777d(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f24236a = abstractC19462a;
    }

    @Override // p193e.p194a.p294b.p295a.p321e.AbstractC7775b
    /* renamed from: a */
    public void mo29295a(AbstractC7761a abstractC7761a) {
        l.e(abstractC7761a, "event");
        AbstractC19462a abstractC19462a = this.f24236a;
        String m29297a = abstractC7761a.m29297a();
        Iterator<Map.Entry<String, String>> it = abstractC7761a.m29296b().entrySet().iterator();
        HashMap hashMap = null;
        while (true) {
            HashMap hashMap2 = hashMap;
            if (!it.hasNext()) {
                AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a(m29297a, null, hashMap2, null);
                l.d(c19505a, "builder.build()");
                abstractC19462a.mo13271e(c19505a);
                return;
            }
            Map.Entry<String, String> next = it.next();
            String key = next.getKey();
            String value = next.getValue();
            HashMap hashMap3 = hashMap2;
            if (hashMap2 == null) {
                hashMap3 = new HashMap();
            }
            hashMap3.put(key, value);
            hashMap = hashMap3;
        }
    }
}
