package p305z4;

import android.support.p012v4.media.AbstractC0081a;
import android.util.Log;
import com.google.firebase.components.InvalidRegistrarException;
import com.google.firebase.components.MissingDependencyException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import p210q5.AbstractC4155a;
import p241t4.C4398d;
import p253u5.AbstractC4487b;
import p253u5.AbstractC4488c;
import p253u5.AbstractC4489d;
import p253u5.C4486a;
import p275w5.AbstractC4737a;
import p275w5.AbstractC4739b;
import p293y2.RunnableC4984d;
/* renamed from: z4.k */
/* loaded from: classes-dex2jar.jar:z4/k.class */
public class C5087k extends AbstractC0081a implements AbstractC4155a {

    /* renamed from: g */
    public static final /* synthetic */ int f15421g = 0;

    /* renamed from: d */
    public final List<AbstractC4739b<AbstractC5083g>> f15425d;

    /* renamed from: e */
    public final C5095o f15426e;

    /* renamed from: a */
    public final Map<C5077c<?>, AbstractC4739b<?>> f15422a = new HashMap();

    /* renamed from: b */
    public final Map<Class<?>, AbstractC4739b<?>> f15423b = new HashMap();

    /* renamed from: c */
    public final Map<Class<?>, C5097q<?>> f15424c = new HashMap();

    /* renamed from: f */
    public final AtomicReference<Boolean> f15427f = new AtomicReference<>();

    public C5087k(Executor executor, Iterable iterable, Collection collection, C5088a c5088a) {
        C5095o c5095o = new C5095o(executor);
        this.f15426e = c5095o;
        ArrayList arrayList = new ArrayList();
        arrayList.add(C5077c.m54c(c5095o, C5095o.class, AbstractC4489d.class, AbstractC4488c.class));
        arrayList.add(C5077c.m54c(this, AbstractC4155a.class, new Class[0]));
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            C5077c c5077c = (C5077c) it2.next();
            if (c5077c != null) {
                arrayList.add(c5077c);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : iterable) {
            arrayList2.add(obj);
        }
        this.f15425d = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        synchronized (this) {
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                try {
                    AbstractC5083g abstractC5083g = (AbstractC5083g) ((AbstractC4739b) it3.next()).get();
                    if (abstractC5083g != null) {
                        arrayList.addAll(abstractC5083g.getComponents());
                        it3.remove();
                    }
                } catch (InvalidRegistrarException e) {
                    it3.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            if (this.f15422a.isEmpty()) {
                C5089l.m44a(arrayList);
            } else {
                ArrayList arrayList4 = new ArrayList(this.f15422a.keySet());
                arrayList4.addAll(arrayList);
                C5089l.m44a(arrayList4);
            }
            Iterator it4 = arrayList.iterator();
            while (it4.hasNext()) {
                final C5077c<?> c5077c2 = (C5077c) it4.next();
                this.f15422a.put(c5077c2, new C5096p(new AbstractC4739b() { // from class: z4.i
                    @Override // p275w5.AbstractC4739b
                    public final Object get() {
                        C5087k c5087k = C5087k.this;
                        C5077c c5077c3 = c5077c2;
                        Objects.requireNonNull(c5087k);
                        return c5077c3.f15406e.mo49b(new C5100t(c5077c3, c5087k));
                    }
                }));
            }
            arrayList3.addAll(m46O(arrayList));
            arrayList3.addAll(m45P());
            m47N();
        }
        Iterator it5 = arrayList3.iterator();
        while (it5.hasNext()) {
            ((Runnable) it5.next()).run();
        }
        Boolean bool = this.f15427f.get();
        if (bool != null) {
            m48M(this.f15422a, bool.booleanValue());
        }
    }

    /* renamed from: M */
    public final void m48M(Map<C5077c<?>, AbstractC4739b<?>> map, boolean z) {
        Queue<C4486a<?>> queue;
        Set<Map.Entry<AbstractC4487b<Object>, Executor>> emptySet;
        for (Map.Entry<C5077c<?>, AbstractC4739b<?>> entry : map.entrySet()) {
            C5077c<?> key = entry.getKey();
            AbstractC4739b<?> value = entry.getValue();
            int i = key.f15404c;
            if (!(i == 1)) {
                boolean z2 = false;
                if (i == 2) {
                    z2 = true;
                }
                if (z2 && z) {
                }
            }
            value.get();
        }
        C5095o c5095o = this.f15426e;
        synchronized (c5095o) {
            queue = c5095o.f15440b;
            if (queue != null) {
                c5095o.f15440b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (C4486a<?> c4486a : queue) {
                Objects.requireNonNull(c4486a);
                synchronized (c5095o) {
                    Queue<C4486a<?>> queue2 = c5095o.f15440b;
                    if (queue2 != null) {
                        queue2.add(c4486a);
                    } else {
                        synchronized (c5095o) {
                            ConcurrentHashMap<AbstractC4487b<Object>, Executor> concurrentHashMap = c5095o.f15439a.get(null);
                            emptySet = concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
                        }
                        for (Map.Entry<AbstractC4487b<Object>, Executor> entry2 : emptySet) {
                            entry2.getValue().execute(new RunnableC5094n(entry2, c4486a, 0));
                        }
                    }
                }
            }
        }
    }

    /* renamed from: N */
    public final void m47N() {
        for (C5077c<?> c5077c : this.f15422a.keySet()) {
            for (C5093m c5093m : c5077c.f15403b) {
                if (c5093m.m42a() && !this.f15424c.containsKey(c5093m.f15433a)) {
                    this.f15424c.put(c5093m.f15433a, new C5097q<>(Collections.emptySet()));
                } else if (this.f15423b.containsKey(c5093m.f15433a)) {
                    continue;
                } else {
                    if (c5093m.f15434b == 1) {
                        throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", c5077c, c5093m.f15433a));
                    }
                    if (!c5093m.m42a()) {
                        this.f15423b.put(c5093m.f15433a, new C5099s(C4398d.f13701c, C5098r.f15447a));
                    }
                }
            }
        }
    }

    /* renamed from: O */
    public final List<Runnable> m46O(List<C5077c<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (C5077c<?> c5077c : list) {
            if (c5077c.m55b()) {
                final AbstractC4739b<?> abstractC4739b = this.f15422a.get(c5077c);
                for (Class<? super Object> cls : c5077c.f15402a) {
                    if (!this.f15423b.containsKey(cls)) {
                        this.f15423b.put(cls, abstractC4739b);
                    } else {
                        final C5099s c5099s = (C5099s) this.f15423b.get(cls);
                        arrayList.add(new Runnable() { // from class: z4.h
                            @Override // java.lang.Runnable
                            public final void run() {
                                AbstractC4737a.AbstractC4738a<T> abstractC4738a;
                                C5099s c5099s2 = C5099s.this;
                                AbstractC4739b<T> abstractC4739b2 = abstractC4739b;
                                if (c5099s2.f15450b == C5098r.f15447a) {
                                    synchronized (c5099s2) {
                                        abstractC4738a = c5099s2.f15449a;
                                        c5099s2.f15449a = null;
                                        c5099s2.f15450b = abstractC4739b2;
                                    }
                                    abstractC4738a.mo97d(abstractC4739b2);
                                    return;
                                }
                                throw new IllegalStateException("provide() can be called only once.");
                            }
                        });
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: P */
    public final List<Runnable> m45P() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry<C5077c<?>, AbstractC4739b<?>> entry : this.f15422a.entrySet()) {
            C5077c<?> key = entry.getKey();
            if (!key.m55b()) {
                AbstractC4739b<?> value = entry.getValue();
                for (Class<? super Object> cls : key.f15402a) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (!this.f15424c.containsKey(entry2.getKey())) {
                this.f15424c.put((Class) entry2.getKey(), new C5097q<>((Set) ((Collection) entry2.getValue())));
            } else {
                C5097q<?> c5097q = this.f15424c.get(entry2.getKey());
                for (AbstractC4739b abstractC4739b : (Set) entry2.getValue()) {
                    arrayList.add(new RunnableC4984d(c5097q, abstractC4739b, 1));
                }
            }
        }
        return arrayList;
    }

    @Override // p305z4.AbstractC5080d
    /* renamed from: c */
    public <T> AbstractC4739b<T> mo38c(Class<T> cls) {
        AbstractC4739b<T> abstractC4739b;
        synchronized (this) {
            Objects.requireNonNull(cls, "Null interface requested.");
            abstractC4739b = (AbstractC4739b<T>) this.f15423b.get(cls);
        }
        return abstractC4739b;
    }

    @Override // p305z4.AbstractC5080d
    /* renamed from: d */
    public <T> AbstractC4739b<Set<T>> mo37d(Class<T> cls) {
        synchronized (this) {
            C5097q<?> c5097q = this.f15424c.get(cls);
            if (c5097q != null) {
                return c5097q;
            }
            return C5086j.f15420a;
        }
    }

    @Override // p305z4.AbstractC5080d
    /* renamed from: e */
    public <T> AbstractC4737a<T> mo36e(Class<T> cls) {
        AbstractC4739b<T> mo38c = mo38c(cls);
        return mo38c == null ? new C5099s(C4398d.f13701c, C5098r.f15447a) : mo38c instanceof C5099s ? (C5099s) mo38c : new C5099s(null, mo38c);
    }
}
