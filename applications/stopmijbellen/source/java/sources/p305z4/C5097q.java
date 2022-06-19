package p305z4;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import p275w5.AbstractC4739b;
/* renamed from: z4.q */
/* loaded from: classes-dex2jar.jar:z4/q.class */
public class C5097q<T> implements AbstractC4739b<Set<T>> {

    /* renamed from: b */
    public volatile Set<T> f15446b = null;

    /* renamed from: a */
    public volatile Set<AbstractC4739b<T>> f15445a = Collections.newSetFromMap(new ConcurrentHashMap());

    public C5097q(Collection<AbstractC4739b<T>> collection) {
        this.f15445a.addAll(collection);
    }

    @Override // p275w5.AbstractC4739b
    public Object get() {
        if (this.f15446b == null) {
            synchronized (this) {
                if (this.f15446b == null) {
                    this.f15446b = Collections.newSetFromMap(new ConcurrentHashMap());
                    synchronized (this) {
                        for (AbstractC4739b<T> abstractC4739b : this.f15445a) {
                            this.f15446b.add(abstractC4739b.get());
                        }
                        this.f15445a = null;
                    }
                }
            }
        }
        return Collections.unmodifiableSet(this.f15446b);
    }
}
