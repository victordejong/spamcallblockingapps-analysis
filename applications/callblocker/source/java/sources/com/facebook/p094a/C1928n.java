package com.facebook.p094a;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
/* renamed from: com.facebook.a.n */
/* loaded from: classes-dex2jar.jar:com/facebook/a/n.class */
class C1928n implements Serializable {

    /* renamed from: a */
    private HashMap<C1806a, List<C1848c>> f5811a = new HashMap<>();

    /* renamed from: com.facebook.a.n$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/n$a.class */
    static class C1930a implements Serializable {

        /* renamed from: a */
        private final HashMap<C1806a, List<C1848c>> f5812a;

        private C1930a(HashMap<C1806a, List<C1848c>> hashMap) {
            this.f5812a = hashMap;
        }

        private Object readResolve() {
            return new C1928n(this.f5812a);
        }
    }

    public C1928n() {
    }

    public C1928n(HashMap<C1806a, List<C1848c>> hashMap) {
        this.f5811a.putAll(hashMap);
    }

    private Object writeReplace() {
        return new C1930a(this.f5811a);
    }

    /* renamed from: a */
    public List<C1848c> m15847a(C1806a c1806a) {
        return this.f5811a.get(c1806a);
    }

    /* renamed from: a */
    public Set<C1806a> m15848a() {
        return this.f5811a.keySet();
    }

    /* renamed from: a */
    public void m15846a(C1806a c1806a, List<C1848c> list) {
        if (!this.f5811a.containsKey(c1806a)) {
            this.f5811a.put(c1806a, list);
        } else {
            this.f5811a.get(c1806a).addAll(list);
        }
    }

    /* renamed from: b */
    public boolean m15845b(C1806a c1806a) {
        return this.f5811a.containsKey(c1806a);
    }
}
