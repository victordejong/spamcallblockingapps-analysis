package p131c.p161d.p282e.p288k;

import com.google.firebase.components.MissingDependencyException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import p131c.p161d.p282e.p313o.AbstractC5472c;
import p131c.p161d.p282e.p313o.AbstractC5473d;
import p131c.p161d.p282e.p334r.AbstractC5887a;
/* renamed from: c.d.e.k.l */
/* loaded from: classes2-dex2jar.jar:c/d/e/k/l.class */
public class C5175l extends AbstractC5159a {

    /* renamed from: e */
    public static final AbstractC5887a<Set<Object>> f17819e = C5174k.m24366a();

    /* renamed from: a */
    public final Map<C5162d<?>, C5183q<?>> f17820a = new HashMap();

    /* renamed from: b */
    public final Map<Class<?>, C5183q<?>> f17821b = new HashMap();

    /* renamed from: c */
    public final Map<Class<?>, C5183q<Set<?>>> f17822c = new HashMap();

    /* renamed from: d */
    public final C5182p f17823d;

    public C5175l(Executor executor, Iterable<AbstractC5171h> iterable, C5162d<?>... dVarArr) {
        this.f17823d = new C5182p(executor);
        ArrayList<C5162d<?>> arrayList = new ArrayList();
        arrayList.add(C5162d.m24391a(this.f17823d, C5182p.class, AbstractC5473d.class, AbstractC5472c.class));
        for (AbstractC5171h hVar : iterable) {
            arrayList.addAll(hVar.getComponents());
        }
        for (C5162d<?> dVar : dVarArr) {
            if (dVar != null) {
                arrayList.add(dVar);
            }
        }
        C5176m.m24359a(arrayList);
        for (C5162d<?> dVar2 : arrayList) {
            this.f17820a.put(dVar2, new C5183q<>(C5172i.m24368a(this, dVar2)));
        }
        m24365a();
        m24361b();
    }

    /* renamed from: a */
    public static /* synthetic */ Set m24363a(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(((C5183q) it.next()).get());
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: a */
    public final void m24365a() {
        for (Map.Entry<C5162d<?>, C5183q<?>> entry : this.f17820a.entrySet()) {
            C5162d<?> key = entry.getKey();
            if (key.m24383g()) {
                C5183q<?> value = entry.getValue();
                for (Class<? super Object> cls : key.m24387c()) {
                    this.f17821b.put(cls, value);
                }
            }
        }
        m24360c();
    }

    /* renamed from: a */
    public void m24362a(boolean z) {
        for (Map.Entry<C5162d<?>, C5183q<?>> entry : this.f17820a.entrySet()) {
            C5162d<?> key = entry.getKey();
            C5183q<?> value = entry.getValue();
            if (key.m24385e() || (key.m24384f() && z)) {
                value.get();
            }
        }
        this.f17823d.m24338a();
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5165e
    /* renamed from: b */
    public <T> AbstractC5887a<T> mo24329b(Class<T> cls) {
        C5184r.m24333a(cls, "Null interface requested.");
        return this.f17821b.get(cls);
    }

    /* renamed from: b */
    public final void m24361b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<C5162d<?>, C5183q<?>> entry : this.f17820a.entrySet()) {
            C5162d<?> key = entry.getKey();
            if (!key.m24383g()) {
                C5183q<?> value = entry.getValue();
                for (Class<? super Object> cls : key.m24387c()) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            this.f17822c.put((Class) entry2.getKey(), new C5183q<>(C5173j.m24367a((Set) entry2.getValue())));
        }
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5165e
    /* renamed from: c */
    public <T> AbstractC5887a<Set<T>> mo24328c(Class<T> cls) {
        C5183q<Set<?>> qVar = this.f17822c.get(cls);
        return qVar != null ? qVar : (AbstractC5887a<Set<T>>) f17819e;
    }

    /* renamed from: c */
    public final void m24360c() {
        for (C5162d<?> dVar : this.f17820a.keySet()) {
            for (C5180n nVar : dVar.m24396a()) {
                if (nVar.m24344c() && !this.f17821b.containsKey(nVar.m24348a())) {
                    throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", dVar, nVar.m24348a()));
                }
            }
        }
    }
}
