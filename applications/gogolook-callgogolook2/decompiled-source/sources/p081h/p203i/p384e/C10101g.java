package p081h.p203i.p384e;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: h.i.e.g */
/* loaded from: classes2-dex2jar.jar:h/i/e/g.class */
public final class C10101g extends AbstractC10104j implements Iterable<AbstractC10104j> {

    /* renamed from: a */
    public final List<AbstractC10104j> f22831a = new ArrayList();

    /* renamed from: a */
    public void m13382a(AbstractC10104j jVar) {
        AbstractC10104j jVar2 = jVar;
        if (jVar == null) {
            jVar2 = C10106l.f22832a;
        }
        this.f22831a.add(jVar2);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof C10101g) && ((C10101g) obj).f22831a.equals(this.f22831a));
    }

    public int hashCode() {
        return this.f22831a.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator<AbstractC10104j> iterator() {
        return this.f22831a.iterator();
    }

    @Override // p081h.p203i.p384e.AbstractC10104j
    /* renamed from: r */
    public String mo13361r() {
        if (this.f22831a.size() == 1) {
            return this.f22831a.get(0).mo13361r();
        }
        throw new IllegalStateException();
    }
}
