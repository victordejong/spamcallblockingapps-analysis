package com.google.firebase.components;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: com.google.firebase.components.q */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/q.class */
final class C15644q {

    /* renamed from: com.google.firebase.components.q$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/q$a.class */
    public static final class C15646a {

        /* renamed from: a */
        final C15622b<?> f56050a;

        /* renamed from: b */
        final Set<C15646a> f56051b = new HashSet();

        /* renamed from: c */
        final Set<C15646a> f56052c = new HashSet();

        C15646a(C15622b<?> c15622b) {
            this.f56050a = c15622b;
        }

        /* renamed from: a */
        final boolean m8514a() {
            return this.f56052c.isEmpty();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.components.q$b */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/q$b.class */
    public static final class C15647b {

        /* renamed from: a */
        final boolean f56053a;

        /* renamed from: b */
        private final Class<?> f56054b;

        private C15647b(Class<?> cls, boolean z) {
            this.f56054b = cls;
            this.f56053a = z;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof C15647b) {
                C15647b c15647b = (C15647b) obj;
                return c15647b.f56054b.equals(this.f56054b) && c15647b.f56053a == this.f56053a;
            }
            return false;
        }

        public final int hashCode() {
            return ((this.f56054b.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f56053a).hashCode();
        }
    }

    C15644q() {
    }

    /* renamed from: a */
    private static Set<C15646a> m8515a(Set<C15646a> set) {
        HashSet hashSet = new HashSet();
        for (C15646a c15646a : set) {
            if (c15646a.m8514a()) {
                hashSet.add(c15646a);
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public static void m8516a(List<C15622b<?>> list) {
        Set<C15646a> set;
        HashMap hashMap = new HashMap(list.size());
        Iterator<C15622b<?>> it2 = list.iterator();
        while (true) {
            int i = 0;
            if (!it2.hasNext()) {
                for (Set<C15646a> set2 : hashMap.values()) {
                    for (C15646a c15646a : set2) {
                        for (C15648r c15648r : c15646a.f56050a.f56014b) {
                            if (c15648r.m8511b() && (set = (Set) hashMap.get(new C15647b(c15648r.f56055a, c15648r.m8513a()))) != null) {
                                for (C15646a c15646a2 : set) {
                                    c15646a.f56051b.add(c15646a2);
                                    c15646a2.f56052c.add(c15646a);
                                }
                            }
                        }
                    }
                }
                HashSet<C15646a> hashSet = new HashSet();
                for (Set set3 : hashMap.values()) {
                    hashSet.addAll(set3);
                }
                Set<C15646a> m8515a = m8515a(hashSet);
                while (!m8515a.isEmpty()) {
                    C15646a next = m8515a.iterator().next();
                    m8515a.remove(next);
                    int i2 = i + 1;
                    Iterator<C15646a> it3 = next.f56051b.iterator();
                    while (true) {
                        i = i2;
                        if (it3.hasNext()) {
                            C15646a next2 = it3.next();
                            next2.f56052c.remove(next);
                            if (next2.m8514a()) {
                                m8515a.add(next2);
                            }
                        }
                    }
                }
                if (i == list.size()) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (C15646a c15646a3 : hashSet) {
                    if (!c15646a3.m8514a() && !c15646a3.f56051b.isEmpty()) {
                        arrayList.add(c15646a3.f56050a);
                    }
                }
                throw new DependencyCycleException(arrayList);
            }
            C15622b<?> next3 = it2.next();
            C15646a c15646a4 = new C15646a(next3);
            for (Class<? super Object> cls : next3.f56013a) {
                C15647b c15647b = new C15647b(cls, !next3.m8553a());
                if (!hashMap.containsKey(c15647b)) {
                    hashMap.put(c15647b, new HashSet());
                }
                Set set4 = (Set) hashMap.get(c15647b);
                if (!set4.isEmpty() && !c15647b.f56053a) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
                set4.add(c15646a4);
            }
        }
    }
}
