package com.google.firebase.components;

import android.util.Log;
import com.google.firebase.p308i.AbstractC9175a;
import com.google.firebase.p312j.AbstractC9244c;
import com.google.firebase.p312j.AbstractC9245d;
import com.google.firebase.p313k.AbstractC9247b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.firebase.components.n */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/n.class */
public class C8873n extends AbstractC8855a implements AbstractC9175a {

    /* renamed from: a */
    private static final AbstractC9247b<Set<Object>> f38820a = C8872m.m2476a();

    /* renamed from: b */
    private final Map<C8858d<?>, AbstractC9247b<?>> f38821b;

    /* renamed from: c */
    private final Map<Class<?>, AbstractC9247b<?>> f38822c;

    /* renamed from: d */
    private final Map<Class<?>, C8885u<?>> f38823d;

    /* renamed from: e */
    private final List<AbstractC9247b<AbstractC8868i>> f38824e;

    /* renamed from: f */
    private final C8883s f38825f;

    /* renamed from: g */
    private final AtomicReference<Boolean> f38826g;

    /* renamed from: com.google.firebase.components.n$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/components/n$b.class */
    public static final class C8875b {

        /* renamed from: a */
        private final Executor f38827a;

        /* renamed from: b */
        private final List<AbstractC9247b<AbstractC8868i>> f38828b = new ArrayList();

        /* renamed from: c */
        private final List<C8858d<?>> f38829c = new ArrayList();

        C8875b(Executor executor) {
            this.f38827a = executor;
        }

        /* renamed from: e */
        public static /* synthetic */ AbstractC8868i m2459e(AbstractC8868i abstractC8868i) {
            return abstractC8868i;
        }

        /* renamed from: a */
        public C8875b m2463a(C8858d<?> c8858d) {
            this.f38829c.add(c8858d);
            return this;
        }

        /* renamed from: b */
        public C8875b m2462b(AbstractC8868i abstractC8868i) {
            this.f38828b.add(C8876o.m2458a(abstractC8868i));
            return this;
        }

        /* renamed from: c */
        public C8875b m2461c(Collection<AbstractC9247b<AbstractC8868i>> collection) {
            this.f38828b.addAll(collection);
            return this;
        }

        /* renamed from: d */
        public C8873n m2460d() {
            return new C8873n(this.f38827a, this.f38828b, this.f38829c);
        }
    }

    private C8873n(Executor executor, Iterable<AbstractC9247b<AbstractC8868i>> iterable, Collection<C8858d<?>> collection) {
        this.f38821b = new HashMap();
        this.f38822c = new HashMap();
        this.f38823d = new HashMap();
        this.f38826g = new AtomicReference<>();
        C8883s c8883s = new C8883s(executor);
        this.f38825f = c8883s;
        ArrayList arrayList = new ArrayList();
        arrayList.add(C8858d.m2497n(c8883s, C8883s.class, AbstractC9245d.class, AbstractC9244c.class));
        arrayList.add(C8858d.m2497n(this, AbstractC9175a.class, new Class[0]));
        for (C8858d<?> c8858d : collection) {
            if (c8858d != null) {
                arrayList.add(c8858d);
            }
        }
        this.f38824e = m2471i(iterable);
        m2474f(arrayList);
    }

    /* renamed from: e */
    public static C8875b m2475e(Executor executor) {
        return new C8875b(executor);
    }

    /* renamed from: f */
    private void m2474f(List<C8858d<?>> list) {
        ArrayList<Runnable> arrayList = new ArrayList();
        synchronized (this) {
            Iterator<AbstractC9247b<AbstractC8868i>> it = this.f38824e.iterator();
            while (it.hasNext()) {
                try {
                    AbstractC8868i abstractC8868i = it.next().get();
                    if (abstractC8868i != null) {
                        list.addAll(abstractC8868i.getComponents());
                        it.remove();
                    }
                } catch (InvalidRegistrarException e) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            if (this.f38821b.isEmpty()) {
                C8877p.m2457a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f38821b.keySet());
                arrayList2.addAll(list);
                C8877p.m2457a(arrayList2);
            }
            for (C8858d<?> c8858d : list) {
                this.f38821b.put(c8858d, new C8884t(C8869j.m2479a(this, c8858d)));
            }
            arrayList.addAll(m2465o(list));
            arrayList.addAll(m2464p());
            m2466n();
        }
        for (Runnable runnable : arrayList) {
            runnable.run();
        }
        m2467m();
    }

    /* renamed from: g */
    private void m2473g(Map<C8858d<?>, AbstractC9247b<?>> map, boolean z) {
        for (Map.Entry<C8858d<?>, AbstractC9247b<?>> entry : map.entrySet()) {
            C8858d<?> key = entry.getKey();
            AbstractC9247b<?> value = entry.getValue();
            if (key.m2502i() || (key.m2501j() && z)) {
                value.get();
            }
        }
        this.f38825f.m2435c();
    }

    /* renamed from: i */
    private static <T> List<T> m2471i(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        for (T t : iterable) {
            arrayList.add(t);
        }
        return arrayList;
    }

    /* renamed from: m */
    private void m2467m() {
        Boolean bool = this.f38826g.get();
        if (bool != null) {
            m2473g(this.f38821b, bool.booleanValue());
        }
    }

    /* renamed from: n */
    private void m2466n() {
        for (C8858d<?> c8858d : this.f38821b.keySet()) {
            for (C8881q c8881q : c8858d.m2508c()) {
                if (c8881q.m2441f() && !this.f38823d.containsKey(c8881q.m2445b())) {
                    this.f38823d.put(c8881q.m2445b(), C8885u.m2430b(Collections.emptySet()));
                } else if (this.f38822c.containsKey(c8881q.m2445b())) {
                    continue;
                } else if (c8881q.m2442e()) {
                    throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", c8858d, c8881q.m2445b()));
                } else {
                    if (!c8881q.m2441f()) {
                        this.f38822c.put(c8881q.m2445b(), C8888x.m2425a());
                    }
                }
            }
        }
    }

    /* renamed from: o */
    private List<Runnable> m2465o(List<C8858d<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (C8858d<?> c8858d : list) {
            if (c8858d.m2500k()) {
                AbstractC9247b<?> abstractC9247b = this.f38821b.get(c8858d);
                for (Class<? super Object> cls : c8858d.m2506e()) {
                    if (!this.f38822c.containsKey(cls)) {
                        this.f38822c.put(cls, abstractC9247b);
                    } else {
                        arrayList.add(RunnableC8870k.m2478a((C8888x) this.f38822c.get(cls), abstractC9247b));
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: p */
    private List<Runnable> m2464p() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry<C8858d<?>, AbstractC9247b<?>> entry : this.f38821b.entrySet()) {
            C8858d<?> key = entry.getKey();
            if (!key.m2500k()) {
                AbstractC9247b<?> value = entry.getValue();
                for (Class<? super Object> cls : key.m2506e()) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (!this.f38823d.containsKey(entry2.getKey())) {
                this.f38823d.put((Class) entry2.getKey(), C8885u.m2430b((Collection) entry2.getValue()));
            } else {
                C8885u<?> c8885u = this.f38823d.get(entry2.getKey());
                for (AbstractC9247b abstractC9247b : (Set) entry2.getValue()) {
                    arrayList.add(RunnableC8871l.m2477a(c8885u, abstractC9247b));
                }
            }
        }
        return arrayList;
    }

    @Override // com.google.firebase.components.AbstractC8855a, com.google.firebase.components.AbstractC8861e
    /* renamed from: a */
    public /* bridge */ /* synthetic */ Object mo2417a(Class cls) {
        return super.mo2417a(cls);
    }

    @Override // com.google.firebase.components.AbstractC8861e
    /* renamed from: b */
    public <T> AbstractC9247b<T> mo2416b(Class<T> cls) {
        AbstractC9247b<T> abstractC9247b;
        synchronized (this) {
            C8889y.m2419c(cls, "Null interface requested.");
            abstractC9247b = (AbstractC9247b<T>) this.f38822c.get(cls);
        }
        return abstractC9247b;
    }

    @Override // com.google.firebase.components.AbstractC8861e
    /* renamed from: c */
    public <T> AbstractC9247b<Set<T>> mo2415c(Class<T> cls) {
        synchronized (this) {
            C8885u<?> c8885u = this.f38823d.get(cls);
            if (c8885u != null) {
                return c8885u;
            }
            return (AbstractC9247b<Set<T>>) f38820a;
        }
    }

    @Override // com.google.firebase.components.AbstractC8855a, com.google.firebase.components.AbstractC8861e
    /* renamed from: d */
    public /* bridge */ /* synthetic */ Set mo2414d(Class cls) {
        return super.mo2414d(cls);
    }

    /* renamed from: h */
    public void m2472h(boolean z) {
        HashMap hashMap;
        if (!this.f38826g.compareAndSet(null, Boolean.valueOf(z))) {
            return;
        }
        synchronized (this) {
            hashMap = new HashMap(this.f38821b);
        }
        m2473g(hashMap, z);
    }
}
