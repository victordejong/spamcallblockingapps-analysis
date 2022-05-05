package p081h.p203i.p325c.p336m;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: h.i.c.m.m */
/* loaded from: classes2-dex2jar.jar:h/i/c/m/m.class */
public class C9494m {

    /* renamed from: h.i.c.m.m$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/m/m$b.class */
    public static class C9496b {

        /* renamed from: a */
        public final C9480d<?> f21639a;

        /* renamed from: b */
        public final Set<C9496b> f21640b = new HashSet();

        /* renamed from: c */
        public final Set<C9496b> f21641c = new HashSet();

        public C9496b(C9480d<?> dVar) {
            this.f21639a = dVar;
        }

        /* renamed from: a */
        public C9480d<?> m15059a() {
            return this.f21639a;
        }

        /* renamed from: a */
        public void m15058a(C9496b bVar) {
            this.f21640b.add(bVar);
        }

        /* renamed from: b */
        public Set<C9496b> m15057b() {
            return this.f21640b;
        }

        /* renamed from: b */
        public void m15056b(C9496b bVar) {
            this.f21641c.add(bVar);
        }

        /* renamed from: c */
        public void m15054c(C9496b bVar) {
            this.f21641c.remove(bVar);
        }

        /* renamed from: c */
        public boolean m15055c() {
            return this.f21640b.isEmpty();
        }

        /* renamed from: d */
        public boolean m15053d() {
            return this.f21641c.isEmpty();
        }
    }

    /* renamed from: h.i.c.m.m$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/m/m$c.class */
    public static class C9497c {

        /* renamed from: a */
        public final Class<?> f21642a;

        /* renamed from: b */
        public final boolean f21643b;

        public C9497c(Class<?> cls, boolean z) {
            this.f21642a = cls;
            this.f21643b = z;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C9497c) {
                C9497c cVar = (C9497c) obj;
                z = false;
                if (cVar.f21642a.equals(this.f21642a)) {
                    z = false;
                    if (cVar.f21643b == this.f21643b) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return ((this.f21642a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f21643b).hashCode();
        }
    }

    /* renamed from: a */
    public static Set<C9496b> m15061a(Set<C9496b> set) {
        HashSet hashSet = new HashSet();
        for (C9496b bVar : set) {
            if (bVar.m15053d()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public static void m15062a(List<C9480d<?>> list) {
        Set<C9496b> b = m15060b(list);
        Set<C9496b> a = m15061a(b);
        int i = 0;
        while (!a.isEmpty()) {
            C9496b next = a.iterator().next();
            a.remove(next);
            i++;
            for (C9496b bVar : next.m15057b()) {
                bVar.m15054c(next);
                if (bVar.m15053d()) {
                    a.add(bVar);
                }
            }
        }
        if (i != list.size()) {
            ArrayList arrayList = new ArrayList();
            for (C9496b bVar2 : b) {
                if (!bVar2.m15053d() && !bVar2.m15055c()) {
                    arrayList.add(bVar2.m15059a());
                }
            }
            throw new C9499o(arrayList);
        }
    }

    /* renamed from: b */
    public static Set<C9496b> m15060b(List<C9480d<?>> list) {
        Set<C9496b> set;
        HashMap hashMap = new HashMap(list.size());
        for (C9480d<?> dVar : list) {
            C9496b bVar = new C9496b(dVar);
            for (Class<? super Object> cls : dVar.m15091c()) {
                C9497c cVar = new C9497c(cls, !dVar.m15087g());
                if (!hashMap.containsKey(cVar)) {
                    hashMap.put(cVar, new HashSet());
                }
                Set set2 = (Set) hashMap.get(cVar);
                if (set2.isEmpty() || cVar.f21643b) {
                    set2.add(bVar);
                } else {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
            }
        }
        for (Set<C9496b> set3 : hashMap.values()) {
            for (C9496b bVar2 : set3) {
                for (C9498n nVar : bVar2.m15059a().m15100a()) {
                    if (nVar.m15049b() && (set = (Set) hashMap.get(new C9497c(nVar.m15051a(), nVar.m15045d()))) != null) {
                        for (C9496b bVar3 : set) {
                            bVar2.m15058a(bVar3);
                            bVar3.m15056b(bVar2);
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
