package p193e.p1451f.p1452a.p1457n.p1466q.p1472i;

import java.util.ArrayList;
import java.util.List;
/* renamed from: e.f.a.n.q.i.f */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/i/f.class */
public class C22551f {

    /* renamed from: a */
    public final List<C22552a<?, ?>> f62478a = new ArrayList();

    /* renamed from: e.f.a.n.q.i.f$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/i/f$a.class */
    public static final class C22552a<Z, R> {

        /* renamed from: a */
        public final Class<Z> f62479a;

        /* renamed from: b */
        public final Class<R> f62480b;

        /* renamed from: c */
        public final AbstractC22550e<Z, R> f62481c;

        public C22552a(Class<Z> cls, Class<R> cls2, AbstractC22550e<Z, R> abstractC22550e) {
            this.f62479a = cls;
            this.f62480b = cls2;
            this.f62481c = abstractC22550e;
        }

        /* renamed from: a */
        public boolean m8144a(Class<?> cls, Class<?> cls2) {
            return this.f62479a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f62480b);
        }
    }

    /* renamed from: a */
    public <Z, R> List<Class<R>> m8145a(Class<Z> cls, Class<R> cls2) {
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            if (cls2.isAssignableFrom(cls)) {
                arrayList.add(cls2);
                return arrayList;
            }
            for (C22552a<?, ?> c22552a : this.f62478a) {
                if (c22552a.m8144a(cls, cls2)) {
                    arrayList.add(cls2);
                }
            }
            return arrayList;
        }
    }
}
