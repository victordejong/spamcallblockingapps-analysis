package com.google.firebase.components;

import com.google.firebase.p161a.AbstractC4856c;
import com.google.firebase.p161a.AbstractC4857d;
import com.google.firebase.p163c.AbstractC4877a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.components.i */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/i.class */
public class C4891i extends AbstractC4878a {

    /* renamed from: a */
    private static final AbstractC4877a<Set<Object>> f20983a = C4894l.m2085b();

    /* renamed from: b */
    private final Map<C4879b<?>, C4902q<?>> f20984b = new HashMap();

    /* renamed from: c */
    private final Map<Class<?>, C4902q<?>> f20985c = new HashMap();

    /* renamed from: d */
    private final Map<Class<?>, C4902q<Set<?>>> f20986d = new HashMap();

    /* renamed from: e */
    private final C4900o f20987e;

    public C4891i(Executor executor, Iterable<AbstractC4890h> iterable, C4879b<?>... c4879bArr) {
        this.f20987e = new C4900o(executor);
        ArrayList<C4879b<?>> arrayList = new ArrayList();
        arrayList.add(C4879b.m2119a(this.f20987e, C4900o.class, AbstractC4857d.class, AbstractC4856c.class));
        for (AbstractC4890h abstractC4890h : iterable) {
            arrayList.addAll(abstractC4890h.getComponents());
        }
        for (C4879b<?> c4879b : c4879bArr) {
            if (c4879b != null) {
                arrayList.add(c4879b);
            }
        }
        C4895m.m2084a(arrayList);
        for (C4879b<?> c4879b2 : arrayList) {
            this.f20984b.put(c4879b2, new C4902q<>(C4892j.m2087a(this, c4879b2)));
        }
        m2093a();
        m2089b();
    }

    /* renamed from: a */
    public static /* synthetic */ Set m2091a(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(((C4902q) it.next()).mo2059a());
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: a */
    private void m2093a() {
        for (Map.Entry<C4879b<?>, C4902q<?>> entry : this.f20984b.entrySet()) {
            C4879b<?> key = entry.getKey();
            if (key.m2111g()) {
                C4902q<?> value = entry.getValue();
                for (Class<? super Object> cls : key.m2124a()) {
                    this.f20985c.put(cls, value);
                }
            }
        }
        m2088c();
    }

    /* renamed from: b */
    private void m2089b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<C4879b<?>, C4902q<?>> entry : this.f20984b.entrySet()) {
            C4879b<?> key = entry.getKey();
            if (!key.m2111g()) {
                C4902q<?> value = entry.getValue();
                for (Class<? super Object> cls : key.m2124a()) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            this.f20986d.put((Class) entry2.getKey(), new C4902q<>(C4893k.m2086a((Set) entry2.getValue())));
        }
    }

    /* renamed from: c */
    private void m2088c() {
        for (C4879b<?> c4879b : this.f20984b.keySet()) {
            for (C4899n c4899n : c4879b.m2118b()) {
                if (c4899n.m2071b() && !this.f20985c.containsKey(c4899n.m2073a())) {
                    throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", c4879b, c4899n.m2073a()));
                }
            }
        }
    }

    @Override // com.google.firebase.components.AbstractC4878a, com.google.firebase.components.AbstractC4884e
    /* renamed from: a */
    public /* bridge */ /* synthetic */ Object mo2054a(Class cls) {
        return super.mo2054a(cls);
    }

    /* renamed from: a */
    public void m2090a(boolean z) {
        for (Map.Entry<C4879b<?>, C4902q<?>> entry : this.f20984b.entrySet()) {
            C4879b<?> key = entry.getKey();
            C4902q<?> value = entry.getValue();
            if (key.m2113e() || (key.m2112f() && z)) {
                value.mo2059a();
            }
        }
        this.f20987e.m2066a();
    }

    @Override // com.google.firebase.components.AbstractC4878a, com.google.firebase.components.AbstractC4884e
    /* renamed from: b */
    public /* bridge */ /* synthetic */ Set mo2053b(Class cls) {
        return super.mo2053b(cls);
    }

    @Override // com.google.firebase.components.AbstractC4884e
    /* renamed from: c */
    public <T> AbstractC4877a<T> mo2052c(Class<T> cls) {
        C4903r.m2057a(cls, "Null interface requested.");
        return this.f20985c.get(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.firebase.components.AbstractC4884e
    /* renamed from: d */
    public <T> AbstractC4877a<Set<T>> mo2051d(Class<T> cls) {
        AbstractC4877a abstractC4877a = (C4902q) this.f20986d.get(cls);
        if (abstractC4877a == null) {
            abstractC4877a = f20983a;
        }
        return abstractC4877a;
    }
}
