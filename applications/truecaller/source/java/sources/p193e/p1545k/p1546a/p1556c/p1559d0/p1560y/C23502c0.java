package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import p193e.p1545k.p1546a.p1547a.AbstractC23316k0;
import p193e.p1545k.p1546a.p1547a.AbstractC23323n0;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1559d0.C23490v;
/* renamed from: e.k.a.c.d0.y.c0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/c0.class */
public class C23502c0 {

    /* renamed from: a */
    public Object f65215a;

    /* renamed from: b */
    public final AbstractC23316k0.C23317a f65216b;

    /* renamed from: c */
    public LinkedList<AbstractC23503a> f65217c;

    /* renamed from: d */
    public AbstractC23323n0 f65218d;

    /* renamed from: e.k.a.c.d0.y.c0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/c0$a.class */
    public static abstract class AbstractC23503a {

        /* renamed from: a */
        public final C23490v f65219a;

        public AbstractC23503a(C23490v c23490v, AbstractC23698i abstractC23698i) {
            this.f65219a = c23490v;
            Class<?> cls = abstractC23698i.f65728a;
        }

        public AbstractC23503a(C23490v c23490v, Class<?> cls) {
            this.f65219a = c23490v;
        }

        /* renamed from: a */
        public abstract void mo6544a(Object obj, Object obj2) throws IOException;
    }

    public C23502c0(AbstractC23316k0.C23317a c23317a) {
        this.f65216b = c23317a;
    }

    /* renamed from: a */
    public void m6721a(AbstractC23503a abstractC23503a) {
        if (this.f65217c == null) {
            this.f65217c = new LinkedList<>();
        }
        this.f65217c.add(abstractC23503a);
    }

    /* renamed from: b */
    public void m6720b(Object obj) throws IOException {
        this.f65218d.mo7274a(this.f65216b, obj);
        this.f65215a = obj;
        Object obj2 = this.f65216b.f64507c;
        LinkedList<AbstractC23503a> linkedList = this.f65217c;
        if (linkedList != null) {
            Iterator<AbstractC23503a> it = linkedList.iterator();
            this.f65217c = null;
            while (it.hasNext()) {
                it.next().mo6544a(obj2, obj);
            }
        }
    }

    public String toString() {
        return String.valueOf(this.f65216b);
    }
}
