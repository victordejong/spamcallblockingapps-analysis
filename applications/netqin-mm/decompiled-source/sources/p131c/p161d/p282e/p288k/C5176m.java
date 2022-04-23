package p131c.p161d.p282e.p288k;

import com.google.firebase.components.DependencyCycleException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: c.d.e.k.m */
/* loaded from: classes2-dex2jar.jar:c/d/e/k/m.class */
public class C5176m {

    /* renamed from: c.d.e.k.m$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/k/m$b.class */
    public static class C5178b {

        /* renamed from: a */
        public final C5162d<?> f17824a;

        /* renamed from: b */
        public final Set<C5178b> f17825b = new HashSet();

        /* renamed from: c */
        public final Set<C5178b> f17826c = new HashSet();

        public C5178b(C5162d<?> dVar) {
            this.f17824a = dVar;
        }

        /* renamed from: a */
        public C5162d<?> m24356a() {
            return this.f17824a;
        }

        /* renamed from: a */
        public void m24355a(C5178b bVar) {
            this.f17825b.add(bVar);
        }

        /* renamed from: b */
        public Set<C5178b> m24354b() {
            return this.f17825b;
        }

        /* renamed from: b */
        public void m24353b(C5178b bVar) {
            this.f17826c.add(bVar);
        }

        /* renamed from: c */
        public void m24351c(C5178b bVar) {
            this.f17826c.remove(bVar);
        }

        /* renamed from: c */
        public boolean m24352c() {
            return this.f17825b.isEmpty();
        }

        /* renamed from: d */
        public boolean m24350d() {
            return this.f17826c.isEmpty();
        }
    }

    /* renamed from: c.d.e.k.m$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/k/m$c.class */
    public static class C5179c {

        /* renamed from: a */
        public final Class<?> f17827a;

        /* renamed from: b */
        public final boolean f17828b;

        public C5179c(Class<?> cls, boolean z) {
            this.f17827a = cls;
            this.f17828b = z;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C5179c) {
                C5179c cVar = (C5179c) obj;
                z = false;
                if (cVar.f17827a.equals(this.f17827a)) {
                    z = false;
                    if (cVar.f17828b == this.f17828b) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return ((this.f17827a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f17828b).hashCode();
        }
    }

    /* renamed from: a */
    public static Set<C5178b> m24358a(Set<C5178b> set) {
        HashSet hashSet = new HashSet();
        for (C5178b bVar : set) {
            if (bVar.m24350d()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public static void m24359a(List<C5162d<?>> list) {
        Set<C5178b> b = m24357b(list);
        Set<C5178b> a = m24358a(b);
        int i = 0;
        while (!a.isEmpty()) {
            C5178b next = a.iterator().next();
            a.remove(next);
            i++;
            for (C5178b bVar : next.m24354b()) {
                bVar.m24351c(next);
                if (bVar.m24350d()) {
                    a.add(bVar);
                }
            }
        }
        if (i != list.size()) {
            ArrayList arrayList = new ArrayList();
            for (C5178b bVar2 : b) {
                if (!bVar2.m24350d() && !bVar2.m24352c()) {
                    arrayList.add(bVar2.m24356a());
                }
            }
            throw new DependencyCycleException(arrayList);
        }
    }

    /* renamed from: b */
    public static Set<C5178b> m24357b(List<C5162d<?>> list) {
        Set<C5178b> set;
        HashMap hashMap = new HashMap(list.size());
        for (C5162d<?> dVar : list) {
            C5178b bVar = new C5178b(dVar);
            for (Class<? super Object> cls : dVar.m24387c()) {
                C5179c cVar = new C5179c(cls, !dVar.m24383g());
                if (!hashMap.containsKey(cVar)) {
                    hashMap.put(cVar, new HashSet());
                }
                Set set2 = (Set) hashMap.get(cVar);
                if (set2.isEmpty() || cVar.f17828b) {
                    set2.add(bVar);
                } else {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
            }
        }
        for (Set<C5178b> set3 : hashMap.values()) {
            for (C5178b bVar2 : set3) {
                for (C5180n nVar : bVar2.m24356a().m24396a()) {
                    if (nVar.m24346b() && (set = (Set) hashMap.get(new C5179c(nVar.m24348a(), nVar.m24342d()))) != null) {
                        for (C5178b bVar3 : set) {
                            bVar2.m24355a(bVar3);
                            bVar3.m24353b(bVar2);
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
