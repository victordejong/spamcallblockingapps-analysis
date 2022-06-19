package p1727n3.p1758e.p1767b;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* renamed from: n3.e.b.t0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/t0.class */
public abstract class AbstractC26092t0 implements AbstractC26097v0 {

    /* renamed from: a */
    public final AbstractC26097v0 f72801a;

    /* renamed from: b */
    public final Set<AbstractC26093a> f72802b = new HashSet();

    /* renamed from: n3.e.b.t0$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/t0$a.class */
    public interface AbstractC26093a {
        /* renamed from: c */
        void mo2717c(AbstractC26097v0 abstractC26097v0);
    }

    public AbstractC26092t0(AbstractC26097v0 abstractC26097v0) {
        this.f72801a = abstractC26097v0;
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC26097v0, java.lang.AutoCloseable
    public void close() {
        HashSet hashSet;
        synchronized (this) {
            this.f72801a.close();
        }
        synchronized (this) {
            hashSet = new HashSet(this.f72802b);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((AbstractC26093a) it.next()).mo2717c(this);
        }
    }
}
