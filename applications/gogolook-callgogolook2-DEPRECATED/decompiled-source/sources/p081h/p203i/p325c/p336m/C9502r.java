package p081h.p203i.p325c.p336m;

import androidx.annotation.GuardedBy;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import p081h.p203i.p325c.p362r.AbstractC9855b;
import p081h.p203i.p325c.p362r.AbstractC9856c;
import p081h.p203i.p325c.p362r.AbstractC9857d;
import p081h.p203i.p325c.p362r.C9854a;
/* renamed from: h.i.c.m.r */
/* loaded from: classes2-dex2jar.jar:h/i/c/m/r.class */
public class C9502r implements AbstractC9857d, AbstractC9856c {
    @GuardedBy("this")

    /* renamed from: a */
    public final Map<Class<?>, ConcurrentHashMap<AbstractC9855b<Object>, Executor>> f21649a = new HashMap();
    @GuardedBy("this")

    /* renamed from: b */
    public Queue<C9854a<?>> f21650b = new ArrayDeque();

    /* renamed from: c */
    public final Executor f21651c;

    public C9502r(Executor executor) {
        this.f21651c = executor;
    }

    /* renamed from: a */
    public final Set<Map.Entry<AbstractC9855b<Object>, Executor>> m15040a(C9854a<?> aVar) {
        Set<Map.Entry<AbstractC9855b<Object>, Executor>> emptySet;
        synchronized (this) {
            ConcurrentHashMap<AbstractC9855b<Object>, Executor> concurrentHashMap = this.f21649a.get(aVar.m14079b());
            emptySet = concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
        }
        return emptySet;
    }

    /* renamed from: a */
    public void m15041a() {
        Queue<C9854a<?>> queue;
        synchronized (this) {
            if (this.f21650b != null) {
                queue = this.f21650b;
                this.f21650b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (C9854a<?> aVar : queue) {
                m15038b(aVar);
            }
        }
    }

    @Override // p081h.p203i.p325c.p362r.AbstractC9857d
    /* renamed from: a */
    public <T> void mo14078a(Class<T> cls, AbstractC9855b<? super T> bVar) {
        mo14077a(cls, this.f21651c, bVar);
    }

    @Override // p081h.p203i.p325c.p362r.AbstractC9857d
    /* renamed from: a */
    public <T> void mo14077a(Class<T> cls, Executor executor, AbstractC9855b<? super T> bVar) {
        synchronized (this) {
            C9505u.m15037a(cls);
            C9505u.m15037a(bVar);
            C9505u.m15037a(executor);
            if (!this.f21649a.containsKey(cls)) {
                this.f21649a.put(cls, new ConcurrentHashMap<>());
            }
            this.f21649a.get(cls).put(bVar, executor);
        }
    }

    /* renamed from: b */
    public void m15038b(C9854a<?> aVar) {
        C9505u.m15037a(aVar);
        synchronized (this) {
            if (this.f21650b != null) {
                this.f21650b.add(aVar);
                return;
            }
            for (Map.Entry<AbstractC9855b<Object>, Executor> entry : m15040a(aVar)) {
                entry.getValue().execute(RunnableC9501q.m15042a(entry, aVar));
            }
        }
    }

    @Override // p081h.p203i.p325c.p362r.AbstractC9857d
    /* renamed from: b */
    public <T> void mo14076b(Class<T> cls, AbstractC9855b<? super T> bVar) {
        synchronized (this) {
            C9505u.m15037a(cls);
            C9505u.m15037a(bVar);
            if (this.f21649a.containsKey(cls)) {
                ConcurrentHashMap<AbstractC9855b<Object>, Executor> concurrentHashMap = this.f21649a.get(cls);
                concurrentHashMap.remove(bVar);
                if (concurrentHashMap.isEmpty()) {
                    this.f21649a.remove(cls);
                }
            }
        }
    }
}
