package com.facebook.appevents;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
/* renamed from: com.facebook.appevents.n */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/n.class */
public class C2284n implements Serializable {

    /* renamed from: a */
    public HashMap<C2252a, List<C2257c>> f2707a = new HashMap<>();

    /* renamed from: com.facebook.appevents.n$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/n$b.class */
    public static class C2286b implements Serializable {

        /* renamed from: a */
        public final HashMap<C2252a, List<C2257c>> f2708a;

        public C2286b(HashMap<C2252a, List<C2257c>> hashMap) {
            this.f2708a = hashMap;
        }

        private Object readResolve() {
            return new C2284n(this.f2708a);
        }
    }

    public C2284n() {
    }

    public C2284n(HashMap<C2252a, List<C2257c>> hashMap) {
        this.f2707a.putAll(hashMap);
    }

    private Object writeReplace() {
        return new C2286b(this.f2707a);
    }

    /* renamed from: a */
    public Set<C2252a> m35290a() {
        return this.f2707a.keySet();
    }

    /* renamed from: a */
    public void m35288a(C2252a aVar, List<C2257c> list) {
        if (!this.f2707a.containsKey(aVar)) {
            this.f2707a.put(aVar, list);
        } else {
            this.f2707a.get(aVar).addAll(list);
        }
    }

    /* renamed from: a */
    public boolean m35289a(C2252a aVar) {
        return this.f2707a.containsKey(aVar);
    }

    /* renamed from: b */
    public List<C2257c> m35287b(C2252a aVar) {
        return this.f2707a.get(aVar);
    }
}
