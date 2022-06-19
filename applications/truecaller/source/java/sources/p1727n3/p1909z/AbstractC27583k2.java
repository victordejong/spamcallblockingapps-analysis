package p1727n3.p1909z;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import s1.s;
import s1.w.d;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: n3.z.k2 */
/* loaded from: classes-dex2jar.jar:n3/z/k2.class */
public abstract class AbstractC27583k2<Key, Value> {

    /* renamed from: a */
    public final CopyOnWriteArrayList<a<s>> f77741a = new CopyOnWriteArrayList<>();

    /* renamed from: b */
    public final AtomicBoolean f77742b = new AtomicBoolean(false);

    /* renamed from: n3.z.k2$a */
    /* loaded from: classes-dex2jar.jar:n3/z/k2$a.class */
    public static abstract class AbstractC27584a<Key> {

        /* renamed from: a */
        public final int f77743a;

        /* renamed from: b */
        public final boolean f77744b;

        public AbstractC27584a(int i, boolean z, f fVar) {
            this.f77743a = i;
            this.f77744b = z;
        }

        /* renamed from: a */
        public abstract Key m61a();
    }

    /* renamed from: n3.z.k2$b */
    /* loaded from: classes-dex2jar.jar:n3/z/k2$b.class */
    public static abstract class AbstractC27585b<Key, Value> {
        public AbstractC27585b() {
        }

        public AbstractC27585b(f fVar) {
        }
    }

    /* renamed from: a */
    public final boolean m67a() {
        return this.f77742b.get();
    }

    /* renamed from: b */
    public boolean m66b() {
        return false;
    }

    /* renamed from: c */
    public abstract Key m65c(C27589l2<Key, Value> c27589l2);

    /* renamed from: d */
    public final void m64d() {
        if (this.f77742b.compareAndSet(false, true)) {
            Iterator<T> it = this.f77741a.iterator();
            while (it.hasNext()) {
                ((a) it.next()).invoke();
            }
        }
    }

    /* renamed from: e */
    public abstract Object m63e(AbstractC27584a<Key> abstractC27584a, d<? super AbstractC27585b<Key, Value>> dVar);

    /* renamed from: f */
    public final void m62f(a<s> aVar) {
        l.e(aVar, "onInvalidatedCallback");
        this.f77741a.add(aVar);
    }
}
