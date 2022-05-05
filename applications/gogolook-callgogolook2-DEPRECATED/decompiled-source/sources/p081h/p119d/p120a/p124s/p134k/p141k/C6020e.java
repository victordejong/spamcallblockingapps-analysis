package p081h.p119d.p120a.p124s.p134k.p141k;

import java.util.HashMap;
import java.util.Map;
import p081h.p119d.p120a.p149y.C6095g;
/* renamed from: h.d.a.s.k.k.e */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/k/e.class */
public class C6020e {

    /* renamed from: b */
    public static final C6095g f15010b = new C6095g();

    /* renamed from: a */
    public final Map<C6095g, AbstractC6019d<?, ?>> f15011a = new HashMap();

    /* renamed from: a */
    public <Z, R> AbstractC6019d<Z, R> m24024a(Class<Z> cls, Class<R> cls2) {
        AbstractC6019d<Z, R> dVar;
        if (cls.equals(cls2)) {
            return C6021f.m24022a();
        }
        synchronized (f15010b) {
            f15010b.m23866a(cls, cls2);
            dVar = (AbstractC6019d<Z, R>) this.f15011a.get(f15010b);
        }
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException("No transcoder registered for " + cls + " and " + cls2);
    }

    /* renamed from: a */
    public <Z, R> void m24023a(Class<Z> cls, Class<R> cls2, AbstractC6019d<Z, R> dVar) {
        this.f15011a.put(new C6095g(cls, cls2), dVar);
    }
}
