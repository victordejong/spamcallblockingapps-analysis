package com.google.firebase.components;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: com.google.firebase.components.p */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/p.class */
class C8877p {

    /* renamed from: com.google.firebase.components.p$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/components/p$b.class */
    public static class C8879b {

        /* renamed from: a */
        private final C8858d<?> f38831a;

        /* renamed from: b */
        private final Set<C8879b> f38832b = new HashSet();

        /* renamed from: c */
        private final Set<C8879b> f38833c = new HashSet();

        C8879b(C8858d<?> c8858d) {
            this.f38831a = c8858d;
        }

        /* renamed from: a */
        void m2454a(C8879b c8879b) {
            this.f38832b.add(c8879b);
        }

        /* renamed from: b */
        void m2453b(C8879b c8879b) {
            this.f38833c.add(c8879b);
        }

        /* renamed from: c */
        C8858d<?> m2452c() {
            return this.f38831a;
        }

        /* renamed from: d */
        Set<C8879b> m2451d() {
            return this.f38832b;
        }

        /* renamed from: e */
        boolean m2450e() {
            return this.f38832b.isEmpty();
        }

        /* renamed from: f */
        boolean m2449f() {
            return this.f38833c.isEmpty();
        }

        /* renamed from: g */
        void m2448g(C8879b c8879b) {
            this.f38833c.remove(c8879b);
        }
    }

    /* renamed from: com.google.firebase.components.p$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/components/p$c.class */
    public static class C8880c {

        /* renamed from: a */
        private final Class<?> f38834a;

        /* renamed from: b */
        private final boolean f38835b;

        private C8880c(Class<?> cls, boolean z) {
            this.f38834a = cls;
            this.f38835b = z;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C8880c) {
                C8880c c8880c = (C8880c) obj;
                z = false;
                if (c8880c.f38834a.equals(this.f38834a)) {
                    z = false;
                    if (c8880c.f38835b == this.f38835b) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return ((this.f38834a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f38835b).hashCode();
        }
    }

    /* renamed from: a */
    public static void m2457a(List<C8858d<?>> list) {
        Set<C8879b> m2455c = m2455c(list);
        Set<C8879b> m2456b = m2456b(m2455c);
        int i = 0;
        while (!m2456b.isEmpty()) {
            C8879b next = m2456b.iterator().next();
            m2456b.remove(next);
            int i2 = i + 1;
            Iterator<C8879b> it = next.m2451d().iterator();
            while (true) {
                i = i2;
                if (it.hasNext()) {
                    C8879b next2 = it.next();
                    next2.m2448g(next);
                    if (next2.m2449f()) {
                        m2456b.add(next2);
                    }
                }
            }
        }
        if (i == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (C8879b c8879b : m2455c) {
            if (!c8879b.m2449f() && !c8879b.m2450e()) {
                arrayList.add(c8879b.m2452c());
            }
        }
        throw new DependencyCycleException(arrayList);
    }

    /* renamed from: b */
    private static Set<C8879b> m2456b(Set<C8879b> set) {
        HashSet hashSet = new HashSet();
        for (C8879b c8879b : set) {
            if (c8879b.m2449f()) {
                hashSet.add(c8879b);
            }
        }
        return hashSet;
    }

    /* renamed from: c */
    private static Set<C8879b> m2455c(List<C8858d<?>> list) {
        Set<C8879b> set;
        HashMap hashMap = new HashMap(list.size());
        for (C8858d<?> c8858d : list) {
            C8879b c8879b = new C8879b(c8858d);
            for (Class<? super Object> cls : c8858d.m2506e()) {
                C8880c c8880c = new C8880c(cls, !c8858d.m2500k());
                if (!hashMap.containsKey(c8880c)) {
                    hashMap.put(c8880c, new HashSet());
                }
                Set set2 = (Set) hashMap.get(c8880c);
                if (!set2.isEmpty() && !c8880c.f38835b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
                set2.add(c8879b);
            }
        }
        for (Set<C8879b> set3 : hashMap.values()) {
            for (C8879b c8879b2 : set3) {
                for (C8881q c8881q : c8879b2.m2452c().m2508c()) {
                    if (c8881q.m2443d() && (set = (Set) hashMap.get(new C8880c(c8881q.m2445b(), c8881q.m2441f()))) != null) {
                        for (C8879b c8879b3 : set) {
                            c8879b2.m2454a(c8879b3);
                            c8879b3.m2453b(c8879b2);
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
