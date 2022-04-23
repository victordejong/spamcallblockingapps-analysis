package com.google.firebase.components;

import android.util.Log;
import com.google.firebase.b.c;
import com.google.firebase.b.d;
import com.google.firebase.d.a;
import com.google.firebase.d.b;
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
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/j.class */
public final class j extends com.google.firebase.components.a implements com.google.firebase.a.a {

    /* renamed from: a  reason: collision with root package name */
    private static final b<Set<Object>> f32254a = o.b();

    /* renamed from: b  reason: collision with root package name */
    private final Map<b<?>, b<?>> f32255b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<Class<?>, b<?>> f32256c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<Class<?>, v<?>> f32257d;
    private final List<b<i>> e;
    private final s f;
    private final AtomicReference<Boolean> g;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/j$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Executor f32258a;

        /* renamed from: b  reason: collision with root package name */
        public final List<b<i>> f32259b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        public final List<b<?>> f32260c = new ArrayList();

        a(Executor executor) {
            this.f32258a = executor;
        }

        public final a a(b<?> bVar) {
            this.f32260c.add(bVar);
            return this;
        }
    }

    private j(Executor executor, Iterable<b<i>> iterable, Collection<b<?>> collection) {
        this.f32255b = new HashMap();
        this.f32256c = new HashMap();
        this.f32257d = new HashMap();
        this.g = new AtomicReference<>();
        s sVar = new s(executor);
        this.f = sVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(b.a(sVar, s.class, d.class, c.class));
        arrayList.add(b.a(this, com.google.firebase.a.a.class, new Class[0]));
        for (b<?> bVar : collection) {
            if (bVar != null) {
                arrayList.add(bVar);
            }
        }
        this.e = b(iterable);
        a((List<b<?>>) arrayList);
    }

    @Deprecated
    public j(Executor executor, Iterable<i> iterable, b<?>... bVarArr) {
        this(executor, a(iterable), Arrays.asList(bVarArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ i a(i iVar) {
        return iVar;
    }

    public static a a(Executor executor) {
        return new a(executor);
    }

    private static Iterable<b<i>> a(Iterable<i> iterable) {
        ArrayList arrayList = new ArrayList();
        for (final i iVar : iterable) {
            arrayList.add(new b(iVar) { // from class: com.google.firebase.components.l

                /* renamed from: a  reason: collision with root package name */
                private final i f32263a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32263a = iVar;
                }

                @Override // com.google.firebase.d.b
                public final Object a() {
                    return j.a(this.f32263a);
                }
            });
        }
        return arrayList;
    }

    private List<Runnable> a() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry<b<?>, b<?>> entry : this.f32255b.entrySet()) {
            b<?> key = entry.getKey();
            if (!key.a()) {
                b<?> value = entry.getValue();
                for (Class<? super Object> cls : key.f32240a) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (!this.f32257d.containsKey(entry2.getKey())) {
                this.f32257d.put((Class) entry2.getKey(), v.a((Collection) entry2.getValue()));
            } else {
                v<?> vVar = this.f32257d.get(entry2.getKey());
                for (b bVar : (Set) entry2.getValue()) {
                    arrayList.add(n.a(vVar, bVar));
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(w wVar, b bVar) {
        a.AbstractC0517a<T> aVar;
        if (wVar.f32291c == w.f32288a) {
            synchronized (wVar) {
                aVar = wVar.f32290b;
                wVar.f32290b = null;
                wVar.f32291c = bVar;
            }
            aVar.a();
            return;
        }
        throw new IllegalStateException("provide() can be called only once.");
    }

    private void a(List<b<?>> list) {
        ArrayList<Runnable> arrayList = new ArrayList();
        synchronized (this) {
            Iterator<b<i>> it2 = this.e.iterator();
            while (it2.hasNext()) {
                try {
                    i a2 = it2.next().a();
                    if (a2 != null) {
                        list.addAll(a2.getComponents());
                        it2.remove();
                    }
                } catch (InvalidRegistrarException e) {
                    it2.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            if (this.f32255b.isEmpty()) {
                q.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f32255b.keySet());
                arrayList2.addAll(list);
                q.a(arrayList2);
            }
            for (final b<?> bVar : list) {
                this.f32255b.put(bVar, new u(new b(this, bVar) { // from class: com.google.firebase.components.k

                    /* renamed from: a  reason: collision with root package name */
                    private final j f32261a;

                    /* renamed from: b  reason: collision with root package name */
                    private final b f32262b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f32261a = this;
                        this.f32262b = bVar;
                    }

                    @Override // com.google.firebase.d.b
                    public final Object a() {
                        Object create;
                        create = r1.f32243d.create(new aa(this.f32262b, this.f32261a));
                        return create;
                    }
                }));
            }
            arrayList.addAll(b(list));
            arrayList.addAll(a());
            b();
        }
        for (Runnable runnable : arrayList) {
            runnable.run();
        }
        Boolean bool = this.g.get();
        if (bool != null) {
            a(this.f32255b, bool.booleanValue());
        }
    }

    private void a(Map<b<?>, b<?>> map, boolean z) {
        Queue<com.google.firebase.b.a<?>> queue;
        for (Map.Entry<b<?>, b<?>> entry : map.entrySet()) {
            b<?> key = entry.getKey();
            b<?> value = entry.getValue();
            boolean z2 = false;
            if (!(key.f32242c == 1)) {
                if (key.f32242c == 2) {
                    z2 = true;
                }
                if (z2 && z) {
                }
            }
            value.a();
        }
        s sVar = this.f;
        synchronized (sVar) {
            queue = null;
            if (sVar.f32278a != null) {
                queue = sVar.f32278a;
                sVar.f32278a = null;
            }
        }
        if (queue != null) {
            for (com.google.firebase.b.a<?> aVar : queue) {
                sVar.a(aVar);
            }
        }
    }

    private static <T> List<T> b(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        for (T t : iterable) {
            arrayList.add(t);
        }
        return arrayList;
    }

    private List<Runnable> b(List<b<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (b<?> bVar : list) {
            if (bVar.a()) {
                b<?> bVar2 = this.f32255b.get(bVar);
                for (Class<? super Object> cls : bVar.f32240a) {
                    if (!this.f32256c.containsKey(cls)) {
                        this.f32256c.put(cls, bVar2);
                    } else {
                        arrayList.add(m.a((w) this.f32256c.get(cls), bVar2));
                    }
                }
            }
        }
        return arrayList;
    }

    private void b() {
        for (b<?> bVar : this.f32255b.keySet()) {
            for (r rVar : bVar.f32241b) {
                if (rVar.a() && !this.f32257d.containsKey(rVar.f32275a)) {
                    this.f32257d.put(rVar.f32275a, v.a(Collections.emptySet()));
                } else if (this.f32256c.containsKey(rVar.f32275a)) {
                    continue;
                } else if (rVar.f32276b == 1) {
                    throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", bVar, rVar.f32275a));
                } else if (!rVar.a()) {
                    this.f32256c.put(rVar.f32275a, w.b());
                }
            }
        }
    }

    @Override // com.google.firebase.components.a, com.google.firebase.components.e
    public final /* bridge */ /* synthetic */ Object a(Class cls) {
        return super.a(cls);
    }

    public final void a(boolean z) {
        HashMap hashMap;
        if (this.g.compareAndSet(null, Boolean.valueOf(z))) {
            synchronized (this) {
                hashMap = new HashMap(this.f32255b);
            }
            a(hashMap, z);
        }
    }

    @Override // com.google.firebase.components.a, com.google.firebase.components.e
    public final /* bridge */ /* synthetic */ Set b(Class cls) {
        return super.b(cls);
    }

    @Override // com.google.firebase.components.e
    public final <T> b<T> c(Class<T> cls) {
        b<T> bVar;
        synchronized (this) {
            z.a(cls, "Null interface requested.");
            bVar = (b<T>) this.f32256c.get(cls);
        }
        return bVar;
    }

    @Override // com.google.firebase.components.e
    public final <T> b<Set<T>> d(Class<T> cls) {
        synchronized (this) {
            v<?> vVar = this.f32257d.get(cls);
            if (vVar != null) {
                return vVar;
            }
            return (b<Set<T>>) f32254a;
        }
    }
}
