package p193e.p1451f.p1452a.p1475q;

import java.util.ArrayList;
import java.util.List;
import p193e.p1451f.p1452a.p1457n.AbstractC22270l;
/* renamed from: e.f.a.q.f */
/* loaded from: classes-dex2jar.jar:e/f/a/q/f.class */
public class C22583f {

    /* renamed from: a */
    public final List<C22584a<?>> f62522a = new ArrayList();

    /* renamed from: e.f.a.q.f$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/q/f$a.class */
    public static final class C22584a<T> {

        /* renamed from: a */
        public final Class<T> f62523a;

        /* renamed from: b */
        public final AbstractC22270l<T> f62524b;

        public C22584a(Class<T> cls, AbstractC22270l<T> abstractC22270l) {
            this.f62523a = cls;
            this.f62524b = abstractC22270l;
        }
    }

    /* renamed from: a */
    public <Z> AbstractC22270l<Z> m8114a(Class<Z> cls) {
        synchronized (this) {
            int size = this.f62522a.size();
            for (int i = 0; i < size; i++) {
                C22584a<?> c22584a = this.f62522a.get(i);
                if (c22584a.f62523a.isAssignableFrom(cls)) {
                    return (AbstractC22270l<Z>) c22584a.f62524b;
                }
            }
            return null;
        }
    }
}
