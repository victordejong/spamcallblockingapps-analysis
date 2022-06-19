package com.google.firebase.components;

import android.util.Log;
import com.google.firebase.p388a.AbstractC15581a;
import com.google.firebase.p389b.AbstractC15608c;
import com.google.firebase.p389b.AbstractC15609d;
import com.google.firebase.p389b.C15606a;
import com.google.firebase.p391d.AbstractC15726a;
import com.google.firebase.p391d.AbstractC15728b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.firebase.components.j */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/j.class */
public final class C15635j extends AbstractC15619a implements AbstractC15581a {

    /* renamed from: a */
    private static final AbstractC15728b<Set<Object>> f56031a = C15642o.m8517b();

    /* renamed from: b */
    private final Map<C15622b<?>, AbstractC15728b<?>> f56032b;

    /* renamed from: c */
    private final Map<Class<?>, AbstractC15728b<?>> f56033c;

    /* renamed from: d */
    private final Map<Class<?>, C15652v<?>> f56034d;

    /* renamed from: e */
    private final List<AbstractC15728b<AbstractC15634i>> f56035e;

    /* renamed from: f */
    private final C15649s f56036f;

    /* renamed from: g */
    private final AtomicReference<Boolean> f56037g;

    /* renamed from: com.google.firebase.components.j$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/j$a.class */
    public static final class C15637a {

        /* renamed from: a */
        public final Executor f56038a;

        /* renamed from: b */
        public final List<AbstractC15728b<AbstractC15634i>> f56039b = new ArrayList();

        /* renamed from: c */
        public final List<C15622b<?>> f56040c = new ArrayList();

        C15637a(Executor executor) {
            this.f56038a = executor;
        }

        /* renamed from: a */
        public final C15637a m8520a(C15622b<?> c15622b) {
            this.f56040c.add(c15622b);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C15635j(Executor executor, Iterable<AbstractC15728b<AbstractC15634i>> iterable, Collection<C15622b<?>> collection) {
        this.f56032b = new HashMap();
        this.f56033c = new HashMap();
        this.f56034d = new HashMap();
        this.f56037g = new AtomicReference<>();
        C15649s c15649s = new C15649s(executor);
        this.f56036f = c15649s;
        ArrayList arrayList = new ArrayList();
        arrayList.add(C15622b.m8549a(c15649s, C15649s.class, AbstractC15609d.class, AbstractC15608c.class));
        arrayList.add(C15622b.m8549a(this, AbstractC15581a.class, new Class[0]));
        for (C15622b<?> c15622b : collection) {
            if (c15622b != null) {
                arrayList.add(c15622b);
            }
        }
        this.f56035e = m8524b(iterable);
        m8530a((List<C15622b<?>>) arrayList);
    }

    @Deprecated
    public C15635j(Executor executor, Iterable<AbstractC15634i> iterable, C15622b<?>... c15622bArr) {
        this(executor, m8531a(iterable), Arrays.asList(c15622bArr));
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC15634i m8536a(AbstractC15634i abstractC15634i) {
        return abstractC15634i;
    }

    /* renamed from: a */
    public static C15637a m8528a(Executor executor) {
        return new C15637a(executor);
    }

    /* renamed from: a */
    private static Iterable<AbstractC15728b<AbstractC15634i>> m8531a(Iterable<AbstractC15634i> iterable) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC15634i abstractC15634i : iterable) {
            arrayList.add(new AbstractC15728b(abstractC15634i) { // from class: com.google.firebase.components.l

                /* renamed from: a */
                private final AbstractC15634i f56043a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f56043a = abstractC15634i;
                }

                @Override // com.google.firebase.p391d.AbstractC15728b
                /* renamed from: a */
                public final Object mo8476a() {
                    return C15635j.m8536a(this.f56043a);
                }
            });
        }
        return arrayList;
    }

    /* renamed from: a */
    private List<Runnable> m8537a() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry<C15622b<?>, AbstractC15728b<?>> entry : this.f56032b.entrySet()) {
            C15622b<?> key = entry.getKey();
            if (!key.m8553a()) {
                AbstractC15728b<?> value = entry.getValue();
                for (Class<? super Object> cls : key.f56013a) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (!this.f56034d.containsKey(entry2.getKey())) {
                this.f56034d.put((Class) entry2.getKey(), C15652v.m8500a((Collection) entry2.getValue()));
            } else {
                C15652v<?> c15652v = this.f56034d.get(entry2.getKey());
                for (AbstractC15728b abstractC15728b : (Set) entry2.getValue()) {
                    arrayList.add(RunnableC15641n.m8518a(c15652v, abstractC15728b));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static /* synthetic */ void m8533a(C15653w c15653w, AbstractC15728b abstractC15728b) {
        AbstractC15726a.AbstractC15727a<T> abstractC15727a;
        if (c15653w.f56071c == C15653w.f56068a) {
            synchronized (c15653w) {
                abstractC15727a = c15653w.f56070b;
                c15653w.f56070b = null;
                c15653w.f56071c = abstractC15728b;
            }
            abstractC15727a.mo8477a();
            return;
        }
        throw new IllegalStateException("provide() can be called only once.");
    }

    /* renamed from: a */
    private void m8530a(List<C15622b<?>> list) {
        ArrayList<Runnable> arrayList = new ArrayList();
        synchronized (this) {
            Iterator<AbstractC15728b<AbstractC15634i>> it2 = this.f56035e.iterator();
            while (it2.hasNext()) {
                try {
                    AbstractC15634i mo8476a = it2.next().mo8476a();
                    if (mo8476a != null) {
                        list.addAll(mo8476a.getComponents());
                        it2.remove();
                    }
                } catch (InvalidRegistrarException e) {
                    it2.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            if (this.f56032b.isEmpty()) {
                C15644q.m8516a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f56032b.keySet());
                arrayList2.addAll(list);
                C15644q.m8516a(arrayList2);
            }
            for (C15622b<?> c15622b : list) {
                this.f56032b.put(c15622b, new C15651u(new AbstractC15728b(this, c15622b) { // from class: com.google.firebase.components.k

                    /* renamed from: a */
                    private final C15635j f56041a;

                    /* renamed from: b */
                    private final C15622b f56042b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f56041a = this;
                        this.f56042b = c15622b;
                    }

                    @Override // com.google.firebase.p391d.AbstractC15728b
                    /* renamed from: a */
                    public final Object mo8476a() {
                        Object create;
                        create = r1.f56016d.create(new C15620aa(this.f56042b, this.f56041a));
                        return create;
                    }
                }));
            }
            arrayList.addAll(m8523b(list));
            arrayList.addAll(m8537a());
            m8526b();
        }
        for (Runnable runnable : arrayList) {
            runnable.run();
        }
        Boolean bool = this.f56037g.get();
        if (bool != null) {
            m8529a(this.f56032b, bool.booleanValue());
        }
    }

    /* renamed from: a */
    private void m8529a(Map<C15622b<?>, AbstractC15728b<?>> map, boolean z) {
        Queue<C15606a<?>> queue;
        for (Map.Entry<C15622b<?>, AbstractC15728b<?>> entry : map.entrySet()) {
            C15622b<?> key = entry.getKey();
            AbstractC15728b<?> value = entry.getValue();
            if (!(key.f56015c == 1)) {
                boolean z2 = false;
                if (key.f56015c == 2) {
                    z2 = true;
                }
                if (z2 && z) {
                }
            }
            value.mo8476a();
        }
        C15649s c15649s = this.f56036f;
        synchronized (c15649s) {
            queue = null;
            if (c15649s.f56058a != null) {
                queue = c15649s.f56058a;
                c15649s.f56058a = null;
            }
        }
        if (queue != null) {
            for (C15606a<?> c15606a : queue) {
                c15649s.m8507a(c15606a);
            }
        }
    }

    /* renamed from: b */
    private static <T> List<T> m8524b(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        for (T t : iterable) {
            arrayList.add(t);
        }
        return arrayList;
    }

    /* renamed from: b */
    private List<Runnable> m8523b(List<C15622b<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (C15622b<?> c15622b : list) {
            if (c15622b.m8553a()) {
                AbstractC15728b<?> abstractC15728b = this.f56032b.get(c15622b);
                for (Class<? super Object> cls : c15622b.f56013a) {
                    if (!this.f56033c.containsKey(cls)) {
                        this.f56033c.put(cls, abstractC15728b);
                    } else {
                        arrayList.add(RunnableC15640m.m8519a((C15653w) this.f56033c.get(cls), abstractC15728b));
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    private void m8526b() {
        for (C15622b<?> c15622b : this.f56032b.keySet()) {
            for (C15648r c15648r : c15622b.f56014b) {
                if (c15648r.m8513a() && !this.f56034d.containsKey(c15648r.f56055a)) {
                    this.f56034d.put(c15648r.f56055a, C15652v.m8500a(Collections.emptySet()));
                } else if (this.f56033c.containsKey(c15648r.f56055a)) {
                    continue;
                } else {
                    if (c15648r.f56056b == 1) {
                        throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", c15622b, c15648r.f56055a));
                    }
                    if (!c15648r.m8513a()) {
                        this.f56033c.put(c15648r.f56055a, C15653w.m8497b());
                    }
                }
            }
        }
    }

    @Override // com.google.firebase.components.AbstractC15619a, com.google.firebase.components.AbstractC15627e
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo8532a(Class cls) {
        return super.mo8532a(cls);
    }

    /* renamed from: a */
    public final void m8527a(boolean z) {
        HashMap hashMap;
        if (!this.f56037g.compareAndSet(null, Boolean.valueOf(z))) {
            return;
        }
        synchronized (this) {
            hashMap = new HashMap(this.f56032b);
        }
        m8529a(hashMap, z);
    }

    @Override // com.google.firebase.components.AbstractC15619a, com.google.firebase.components.AbstractC15627e
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Set mo8525b(Class cls) {
        return super.mo8525b(cls);
    }

    @Override // com.google.firebase.components.AbstractC15627e
    /* renamed from: c */
    public final <T> AbstractC15728b<T> mo8522c(Class<T> cls) {
        AbstractC15728b<T> abstractC15728b;
        synchronized (this) {
            C15656z.m8491a(cls, "Null interface requested.");
            abstractC15728b = (AbstractC15728b<T>) this.f56033c.get(cls);
        }
        return abstractC15728b;
    }

    @Override // com.google.firebase.components.AbstractC15627e
    /* renamed from: d */
    public final <T> AbstractC15728b<Set<T>> mo8521d(Class<T> cls) {
        synchronized (this) {
            C15652v<?> c15652v = this.f56034d.get(cls);
            if (c15652v != null) {
                return c15652v;
            }
            return (AbstractC15728b<Set<T>>) f56031a;
        }
    }
}
