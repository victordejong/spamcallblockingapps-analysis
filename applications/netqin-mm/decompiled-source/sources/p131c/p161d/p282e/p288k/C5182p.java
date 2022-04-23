package p131c.p161d.p282e.p288k;

import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import p131c.p161d.p282e.p313o.AbstractC5471b;
import p131c.p161d.p282e.p313o.AbstractC5472c;
import p131c.p161d.p282e.p313o.AbstractC5473d;
import p131c.p161d.p282e.p313o.C5470a;
/* renamed from: c.d.e.k.p */
/* loaded from: classes2-dex2jar.jar:c/d/e/k/p.class */
public class C5182p implements AbstractC5473d, AbstractC5472c {

    /* renamed from: a */
    public final Map<Class<?>, ConcurrentHashMap<AbstractC5471b<Object>, Executor>> f17834a = new HashMap();

    /* renamed from: b */
    public Queue<C5470a<?>> f17835b = new ArrayDeque();

    /* renamed from: c */
    public final Executor f17836c;

    public C5182p(Executor executor) {
        this.f17836c = executor;
    }

    /* renamed from: a */
    public final Set<Map.Entry<AbstractC5471b<Object>, Executor>> m24337a(C5470a<?> aVar) {
        Set<Map.Entry<AbstractC5471b<Object>, Executor>> emptySet;
        synchronized (this) {
            ConcurrentHashMap<AbstractC5471b<Object>, Executor> concurrentHashMap = this.f17834a.get(aVar.m23718b());
            emptySet = concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
        }
        return emptySet;
    }

    /* renamed from: a */
    public void m24338a() {
        Queue<C5470a<?>> queue;
        synchronized (this) {
            try {
                queue = null;
                if (this.f17835b != null) {
                    queue = this.f17835b;
                    this.f17835b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (queue != null) {
            for (C5470a<?> aVar : queue) {
                m24335b(aVar);
            }
        }
    }

    @Override // p131c.p161d.p282e.p313o.AbstractC5473d
    /* renamed from: a */
    public <T> void mo23717a(Class<T> cls, AbstractC5471b<? super T> bVar) {
        mo23716a(cls, this.f17836c, bVar);
    }

    @Override // p131c.p161d.p282e.p313o.AbstractC5473d
    /* renamed from: a */
    public <T> void mo23716a(Class<T> cls, Executor executor, AbstractC5471b<? super T> bVar) {
        synchronized (this) {
            C5184r.m24334a(cls);
            C5184r.m24334a(bVar);
            C5184r.m24334a(executor);
            if (!this.f17834a.containsKey(cls)) {
                this.f17834a.put(cls, new ConcurrentHashMap<>());
            }
            this.f17834a.get(cls).put(bVar, executor);
        }
    }

    /* renamed from: b */
    public void m24335b(C5470a<?> aVar) {
        C5184r.m24334a(aVar);
        synchronized (this) {
            try {
                if (this.f17835b != null) {
                    this.f17835b.add(aVar);
                    return;
                }
                for (Map.Entry<AbstractC5471b<Object>, Executor> entry : m24337a(aVar)) {
                    entry.getValue().execute(RunnableC5181o.m24339a(entry, aVar));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
