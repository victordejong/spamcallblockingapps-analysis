package p081h.p203i.p384e;

import java.util.Map;
import java.util.Set;
import p081h.p203i.p384e.p386w.C10146g;
/* renamed from: h.i.e.m */
/* loaded from: classes2-dex2jar.jar:h/i/e/m.class */
public final class C10107m extends AbstractC10104j {

    /* renamed from: a */
    public final C10146g<String, AbstractC10104j> f22833a = new C10146g<>();

    /* renamed from: a */
    public AbstractC10104j m13373a(String str) {
        return this.f22833a.get(str);
    }

    /* renamed from: a */
    public void m13372a(String str, AbstractC10104j jVar) {
        C10146g<String, AbstractC10104j> gVar = this.f22833a;
        AbstractC10104j jVar2 = jVar;
        if (jVar == null) {
            jVar2 = C10106l.f22832a;
        }
        gVar.put(str, jVar2);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof C10107m) && ((C10107m) obj).f22833a.equals(this.f22833a));
    }

    public int hashCode() {
        return this.f22833a.hashCode();
    }

    /* renamed from: w */
    public Set<Map.Entry<String, AbstractC10104j>> m13371w() {
        return this.f22833a.entrySet();
    }
}
