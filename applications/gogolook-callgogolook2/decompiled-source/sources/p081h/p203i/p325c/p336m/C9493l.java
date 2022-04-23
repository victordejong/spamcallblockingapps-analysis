package p081h.p203i.p325c.p336m;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import p081h.p203i.p325c.p362r.AbstractC9856c;
import p081h.p203i.p325c.p362r.AbstractC9857d;
import p081h.p203i.p325c.p366u.AbstractC9929a;
/* renamed from: h.i.c.m.l */
/* loaded from: classes2-dex2jar.jar:h/i/c/m/l.class */
public class C9493l extends AbstractC9477a {

    /* renamed from: e */
    public static final AbstractC9929a<Set<Object>> f21634e = C9492k.m15069a();

    /* renamed from: a */
    public final Map<C9480d<?>, C9503s<?>> f21635a = new HashMap();

    /* renamed from: b */
    public final Map<Class<?>, C9503s<?>> f21636b = new HashMap();

    /* renamed from: c */
    public final Map<Class<?>, C9503s<Set<?>>> f21637c = new HashMap();

    /* renamed from: d */
    public final C9502r f21638d;

    public C9493l(Executor executor, Iterable<AbstractC9489h> iterable, C9480d<?>... dVarArr) {
        this.f21638d = new C9502r(executor);
        ArrayList<C9480d<?>> arrayList = new ArrayList();
        arrayList.add(C9480d.m15095a(this.f21638d, C9502r.class, AbstractC9857d.class, AbstractC9856c.class));
        for (AbstractC9489h hVar : iterable) {
            arrayList.addAll(hVar.getComponents());
        }
        for (C9480d<?> dVar : dVarArr) {
            if (dVar != null) {
                arrayList.add(dVar);
            }
        }
        C9494m.m15062a(arrayList);
        for (C9480d<?> dVar2 : arrayList) {
            this.f21635a.put(dVar2, new C9503s<>(C9490i.m15071a(this, dVar2)));
        }
        m15068a();
        m15064b();
    }

    /* renamed from: a */
    public static /* synthetic */ Set m15066a(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(((C9503s) it.next()).get());
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: a */
    public final void m15068a() {
        for (Map.Entry<C9480d<?>, C9503s<?>> entry : this.f21635a.entrySet()) {
            C9480d<?> key = entry.getKey();
            if (key.m15087g()) {
                C9503s<?> value = entry.getValue();
                for (Class<? super Object> cls : key.m15091c()) {
                    this.f21636b.put(cls, value);
                }
            }
        }
        m15063c();
    }

    /* renamed from: a */
    public void m15065a(boolean z) {
        for (Map.Entry<C9480d<?>, C9503s<?>> entry : this.f21635a.entrySet()) {
            C9480d<?> key = entry.getKey();
            C9503s<?> value = entry.getValue();
            if (key.m15089e() || (key.m15088f() && z)) {
                value.get();
            }
        }
        this.f21638d.m15041a();
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9483e
    /* renamed from: b */
    public <T> AbstractC9929a<Set<T>> mo15032b(Class<T> cls) {
        C9503s<Set<?>> sVar = this.f21637c.get(cls);
        return sVar != null ? sVar : (AbstractC9929a<Set<T>>) f21634e;
    }

    /* renamed from: b */
    public final void m15064b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<C9480d<?>, C9503s<?>> entry : this.f21635a.entrySet()) {
            C9480d<?> key = entry.getKey();
            if (!key.m15087g()) {
                C9503s<?> value = entry.getValue();
                for (Class<? super Object> cls : key.m15091c()) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            this.f21637c.put((Class) entry2.getKey(), new C9503s<>(C9491j.m15070a((Set) entry2.getValue())));
        }
    }

    /* renamed from: c */
    public final void m15063c() {
        for (C9480d<?> dVar : this.f21635a.keySet()) {
            for (C9498n nVar : dVar.m15100a()) {
                if (nVar.m15047c() && !this.f21636b.containsKey(nVar.m15051a())) {
                    throw new C9504t(String.format("Unsatisfied dependency for component %s: %s", dVar, nVar.m15051a()));
                }
            }
        }
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9483e
    /* renamed from: d */
    public <T> AbstractC9929a<T> mo15030d(Class<T> cls) {
        C9505u.m15036a(cls, "Null interface requested.");
        return this.f21636b.get(cls);
    }
}
