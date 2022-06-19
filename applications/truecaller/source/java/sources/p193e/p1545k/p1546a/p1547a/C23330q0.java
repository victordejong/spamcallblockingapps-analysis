package p193e.p1545k.p1546a.p1547a;

import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23316k0;
/* renamed from: e.k.a.a.q0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/q0.class */
public class C23330q0 implements AbstractC23323n0 {

    /* renamed from: a */
    public Map<AbstractC23316k0.C23317a, Object> f64528a;

    @Override // p193e.p1545k.p1546a.p1547a.AbstractC23323n0
    /* renamed from: a */
    public void mo7274a(AbstractC23316k0.C23317a c23317a, Object obj) {
        Map<AbstractC23316k0.C23317a, Object> map = this.f64528a;
        if (map == null) {
            this.f64528a = new HashMap();
        } else {
            Object obj2 = map.get(c23317a);
            if (obj2 != null) {
                if (obj2 == obj) {
                    return;
                }
                StringBuilder m8728C = C22128a.m8728C("Already had POJO for id (");
                m8728C.append(c23317a.f64507c.getClass().getName());
                m8728C.append(") [");
                m8728C.append(c23317a);
                m8728C.append("]");
                throw new IllegalStateException(m8728C.toString());
            }
        }
        this.f64528a.put(c23317a, obj);
    }

    @Override // p193e.p1545k.p1546a.p1547a.AbstractC23323n0
    /* renamed from: b */
    public Object mo7273b(AbstractC23316k0.C23317a c23317a) {
        Map<AbstractC23316k0.C23317a, Object> map = this.f64528a;
        return map == null ? null : map.get(c23317a);
    }

    @Override // p193e.p1545k.p1546a.p1547a.AbstractC23323n0
    /* renamed from: c */
    public AbstractC23323n0 mo7272c(Object obj) {
        return new C23330q0();
    }

    @Override // p193e.p1545k.p1546a.p1547a.AbstractC23323n0
    /* renamed from: d */
    public boolean mo7271d(AbstractC23323n0 abstractC23323n0) {
        return abstractC23323n0.getClass() == C23330q0.class;
    }
}
