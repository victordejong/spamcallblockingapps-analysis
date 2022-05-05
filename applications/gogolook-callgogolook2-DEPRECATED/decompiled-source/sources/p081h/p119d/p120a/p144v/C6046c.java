package p081h.p119d.p120a.p144v;

import java.util.HashMap;
import java.util.Map;
import p081h.p119d.p120a.p149y.C6095g;
/* renamed from: h.d.a.v.c */
/* loaded from: classes-dex2jar.jar:h/d/a/v/c.class */
public class C6046c {

    /* renamed from: b */
    public static final C6095g f15047b = new C6095g();

    /* renamed from: a */
    public final Map<C6095g, AbstractC6045b<?, ?>> f15048a = new HashMap();

    /* renamed from: a */
    public <T, Z> AbstractC6045b<T, Z> m23974a(Class<T> cls, Class<Z> cls2) {
        AbstractC6045b<?, ?> bVar;
        synchronized (f15047b) {
            f15047b.m23866a(cls, cls2);
            bVar = this.f15048a.get(f15047b);
        }
        AbstractC6045b<T, Z> bVar2 = (AbstractC6045b<T, Z>) bVar;
        if (bVar == null) {
            bVar2 = C6047d.m23972a();
        }
        return bVar2;
    }

    /* renamed from: a */
    public <T, Z> void m23973a(Class<T> cls, Class<Z> cls2, AbstractC6045b<T, Z> bVar) {
        this.f15048a.put(new C6095g(cls, cls2), bVar);
    }
}
