package com.google.firebase.components;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/q.class */
final class q {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/q$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final com.google.firebase.components.b<?> f32270a;

        /* renamed from: b  reason: collision with root package name */
        final Set<a> f32271b = new HashSet();

        /* renamed from: c  reason: collision with root package name */
        final Set<a> f32272c = new HashSet();

        a(com.google.firebase.components.b<?> bVar) {
            this.f32270a = bVar;
        }

        final boolean a() {
            return this.f32272c.isEmpty();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/q$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final boolean f32273a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<?> f32274b;

        private b(Class<?> cls, boolean z) {
            this.f32274b = cls;
            this.f32273a = z;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return bVar.f32274b.equals(this.f32274b) && bVar.f32273a == this.f32273a;
        }

        public final int hashCode() {
            return ((this.f32274b.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f32273a).hashCode();
        }
    }

    q() {
    }

    private static Set<a> a(Set<a> set) {
        HashSet hashSet = new HashSet();
        for (a aVar : set) {
            if (aVar.a()) {
                hashSet.add(aVar);
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(List<com.google.firebase.components.b<?>> list) {
        Set<a> set;
        HashMap hashMap = new HashMap(list.size());
        Iterator<com.google.firebase.components.b<?>> it2 = list.iterator();
        while (true) {
            int i = 0;
            if (it2.hasNext()) {
                com.google.firebase.components.b<?> next = it2.next();
                a aVar = new a(next);
                for (Class<? super Object> cls : next.f32240a) {
                    b bVar = new b(cls, !next.a());
                    if (!hashMap.containsKey(bVar)) {
                        hashMap.put(bVar, new HashSet());
                    }
                    Set set2 = (Set) hashMap.get(bVar);
                    if (set2.isEmpty() || bVar.f32273a) {
                        set2.add(aVar);
                    } else {
                        throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                    }
                }
            } else {
                for (Set<a> set3 : hashMap.values()) {
                    for (a aVar2 : set3) {
                        for (r rVar : aVar2.f32270a.f32241b) {
                            if (rVar.b() && (set = (Set) hashMap.get(new b(rVar.f32275a, rVar.a()))) != null) {
                                for (a aVar3 : set) {
                                    aVar2.f32271b.add(aVar3);
                                    aVar3.f32272c.add(aVar2);
                                }
                            }
                        }
                    }
                }
                HashSet<a> hashSet = new HashSet();
                for (Set set4 : hashMap.values()) {
                    hashSet.addAll(set4);
                }
                Set<a> a2 = a(hashSet);
                while (!a2.isEmpty()) {
                    a next2 = a2.iterator().next();
                    a2.remove(next2);
                    i++;
                    for (a aVar4 : next2.f32271b) {
                        aVar4.f32272c.remove(next2);
                        if (aVar4.a()) {
                            a2.add(aVar4);
                        }
                    }
                }
                if (i != list.size()) {
                    ArrayList arrayList = new ArrayList();
                    for (a aVar5 : hashSet) {
                        if (!aVar5.a() && !aVar5.f32271b.isEmpty()) {
                            arrayList.add(aVar5.f32270a);
                        }
                    }
                    throw new DependencyCycleException(arrayList);
                }
                return;
            }
        }
    }
}
