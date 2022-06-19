package p193e.p1512i.p1516b.p1537z1;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p193e.p1512i.p1516b.AbstractRunnableC22929c3;
import p193e.p1512i.p1516b.p1522i2.C22967g;
import p193e.p1512i.p1516b.p1531s2.C23080f;
import p193e.p1512i.p1516b.p1537z1.AbstractC23177d0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.i.b.z1.i0 */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/i0.class */
public final class C23192i0 extends AbstractRunnableC22929c3 {

    /* renamed from: c */
    public final AbstractC23181e0 f64192c;

    /* renamed from: d */
    public final C22967g f64193d;

    /* renamed from: e */
    public final C23080f f64194e;

    public C23192i0(AbstractC23181e0 abstractC23181e0, C22967g c22967g, C23080f c23080f) {
        l.f(abstractC23181e0, "queue");
        l.f(c22967g, "api");
        l.f(c23080f, "buildConfigWrapper");
        this.f64192c = abstractC23181e0;
        this.f64193d = c22967g;
        this.f64194e = c23080f;
    }

    @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
    /* renamed from: a */
    public void mo7379a() {
        AbstractC23181e0 abstractC23181e0 = this.f64192c;
        Objects.requireNonNull(this.f64194e);
        List<AbstractC23211x> mo7389a = abstractC23181e0.mo7389a(24);
        if (mo7389a.isEmpty()) {
            return;
        }
        List a1 = i.a1(mo7389a);
        try {
            for (Map.Entry entry : ((LinkedHashMap) m7411b(mo7389a)).entrySet()) {
                this.f64193d.m7608d("/csm", (AbstractC23177d0) entry.getKey());
                ((ArrayList) a1).removeAll((Collection) entry.getValue());
            }
            if (!(!((ArrayList) a1).isEmpty())) {
                return;
            }
            m7410c(a1);
        } catch (Throwable th) {
            if (!((ArrayList) a1).isEmpty()) {
                m7410c(a1);
            }
            throw th;
        }
    }

    /* renamed from: b */
    public final Map<AbstractC23177d0, Collection<AbstractC23211x>> m7411b(Collection<? extends AbstractC23211x> collection) {
        Objects.requireNonNull(this.f64194e);
        l.b("4.4.0", "buildConfigWrapper.sdkVersion");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : collection) {
            Integer mo7368e = ((AbstractC23211x) obj).mo7368e();
            if (mo7368e == null) {
                mo7368e = 235;
            }
            Object obj2 = linkedHashMap.get(mo7368e);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(mo7368e, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(C25225a.m3942Y1(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Collection<AbstractC23211x> collection2 = (Collection) entry.getValue();
            Object key = entry.getKey();
            l.b(key, "it.key");
            int intValue = ((Number) key).intValue();
            ArrayList arrayList2 = new ArrayList();
            for (AbstractC23211x abstractC23211x : collection2) {
                arrayList2.add(new q(Collections.singletonList(new r(abstractC23211x.mo7369d(), abstractC23211x.mo7366g(), abstractC23211x.mo7365h())), AbstractC23177d0.AbstractC23178a.m7422b(abstractC23211x.mo7370c(), abstractC23211x.mo7371b()), abstractC23211x.mo7364i(), 0L, AbstractC23177d0.AbstractC23178a.m7422b(abstractC23211x.mo7372a(), abstractC23211x.mo7371b()), abstractC23211x.mo7367f()));
            }
            linkedHashMap2.put(new p(arrayList2, "4.4.0", intValue), entry.getValue());
        }
        return linkedHashMap2;
    }

    /* renamed from: c */
    public final void m7410c(Collection<? extends AbstractC23211x> collection) {
        for (AbstractC23211x abstractC23211x : collection) {
            this.f64192c.mo7388a((AbstractC23181e0) abstractC23211x);
        }
    }
}
