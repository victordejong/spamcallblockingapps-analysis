package p193e.p194a.p1002k4.p1003n;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import s1.z.c.l;
/* renamed from: e.a.k4.n.c */
/* loaded from: classes11-dex2jar.jar:e/a/k4/n/c.class */
public final class C16525c implements AbstractC16523a {

    /* renamed from: a */
    public final AbstractC19462a f46456a;

    public C16525c(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f46456a = abstractC19462a;
    }

    @Override // p193e.p194a.p1002k4.p1003n.AbstractC16523a
    /* renamed from: a */
    public void mo17273a(AbstractC16528f abstractC16528f) {
        l.e(abstractC16528f, "event");
        AbstractC19462a abstractC19462a = this.f46456a;
        String m17272a = abstractC16528f.m17272a();
        Iterator<Map.Entry<String, String>> it = abstractC16528f.m17271b().entrySet().iterator();
        HashMap hashMap = null;
        while (true) {
            HashMap hashMap2 = hashMap;
            if (!it.hasNext()) {
                AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a(m17272a, null, hashMap2, null);
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
