package com.google.firebase.components;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.google.firebase.components.m */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/m.class */
class C4895m {

    /* renamed from: com.google.firebase.components.m$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/m$a.class */
    public static class C4897a {

        /* renamed from: a */
        private final C4879b<?> f20992a;

        /* renamed from: b */
        private final Set<C4897a> f20993b = new HashSet();

        /* renamed from: c */
        private final Set<C4897a> f20994c = new HashSet();

        C4897a(C4879b<?> c4879b) {
            this.f20992a = c4879b;
        }

        /* renamed from: a */
        Set<C4897a> m2081a() {
            return this.f20993b;
        }

        /* renamed from: a */
        void m2080a(C4897a c4897a) {
            this.f20993b.add(c4897a);
        }

        /* renamed from: b */
        C4879b<?> m2079b() {
            return this.f20992a;
        }

        /* renamed from: b */
        void m2078b(C4897a c4897a) {
            this.f20994c.add(c4897a);
        }

        /* renamed from: c */
        void m2076c(C4897a c4897a) {
            this.f20994c.remove(c4897a);
        }

        /* renamed from: c */
        boolean m2077c() {
            return this.f20994c.isEmpty();
        }

        /* renamed from: d */
        boolean m2075d() {
            return this.f20993b.isEmpty();
        }
    }

    /* renamed from: com.google.firebase.components.m$b */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/m$b.class */
    public static class C4898b {

        /* renamed from: a */
        private final Class<?> f20995a;

        /* renamed from: b */
        private final boolean f20996b;

        private C4898b(Class<?> cls, boolean z) {
            this.f20995a = cls;
            this.f20996b = z;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C4898b) {
                C4898b c4898b = (C4898b) obj;
                z = false;
                if (c4898b.f20995a.equals(this.f20995a)) {
                    z = false;
                    if (c4898b.f20996b == this.f20996b) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return ((this.f20995a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f20996b).hashCode();
        }
    }

    /* renamed from: a */
    private static Set<C4897a> m2083a(Set<C4897a> set) {
        HashSet hashSet = new HashSet();
        for (C4897a c4897a : set) {
            if (c4897a.m2077c()) {
                hashSet.add(c4897a);
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public static void m2084a(List<C4879b<?>> list) {
        Set<C4897a> m2082b = m2082b(list);
        Set<C4897a> m2083a = m2083a(m2082b);
        int i = 0;
        while (!m2083a.isEmpty()) {
            C4897a next = m2083a.iterator().next();
            m2083a.remove(next);
            for (C4897a c4897a : next.m2081a()) {
                c4897a.m2076c(next);
                if (c4897a.m2077c()) {
                    m2083a.add(c4897a);
                }
            }
            i++;
        }
        if (i == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (C4897a c4897a2 : m2082b) {
            if (!c4897a2.m2077c() && !c4897a2.m2075d()) {
                arrayList.add(c4897a2.m2079b());
            }
        }
        throw new DependencyCycleException(arrayList);
    }

    /* renamed from: b */
    private static Set<C4897a> m2082b(List<C4879b<?>> list) {
        Set<C4897a> set;
        HashMap hashMap = new HashMap(list.size());
        for (C4879b<?> c4879b : list) {
            C4897a c4897a = new C4897a(c4879b);
            for (Class<? super Object> cls : c4879b.m2124a()) {
                C4898b c4898b = new C4898b(cls, !c4879b.m2111g());
                if (!hashMap.containsKey(c4898b)) {
                    hashMap.put(c4898b, new HashSet());
                }
                Set set2 = (Set) hashMap.get(c4898b);
                if (!set2.isEmpty() && !c4898b.f20996b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
                set2.add(c4897a);
            }
        }
        for (Set<C4897a> set3 : hashMap.values()) {
            for (C4897a c4897a2 : set3) {
                for (C4899n c4899n : c4897a2.m2079b().m2118b()) {
                    if (c4899n.m2067d() && (set = (Set) hashMap.get(new C4898b(c4899n.m2073a(), c4899n.m2069c()))) != null) {
                        for (C4897a c4897a3 : set) {
                            c4897a2.m2080a(c4897a3);
                            c4897a3.m2078b(c4897a2);
                        }
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (Set set4 : hashMap.values()) {
            hashSet.addAll(set4);
        }
        return hashSet;
    }
}
