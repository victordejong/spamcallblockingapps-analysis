package p305z4;

import com.google.firebase.components.DependencyCycleException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: z4.l */
/* loaded from: classes-dex2jar.jar:z4/l.class */
public class C5089l {

    /* renamed from: z4.l$b */
    /* loaded from: classes-dex2jar.jar:z4/l$b.class */
    public static class C5091b {

        /* renamed from: a */
        public final C5077c<?> f15428a;

        /* renamed from: b */
        public final Set<C5091b> f15429b = new HashSet();

        /* renamed from: c */
        public final Set<C5091b> f15430c = new HashSet();

        public C5091b(C5077c<?> c5077c) {
            this.f15428a = c5077c;
        }

        /* renamed from: a */
        public boolean m43a() {
            return this.f15430c.isEmpty();
        }
    }

    /* renamed from: z4.l$c */
    /* loaded from: classes-dex2jar.jar:z4/l$c.class */
    public static class C5092c {

        /* renamed from: a */
        public final Class<?> f15431a;

        /* renamed from: b */
        public final boolean f15432b;

        public C5092c(Class cls, boolean z, C5090a c5090a) {
            this.f15431a = cls;
            this.f15432b = z;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C5092c) {
                C5092c c5092c = (C5092c) obj;
                z = false;
                if (c5092c.f15431a.equals(this.f15431a)) {
                    z = false;
                    if (c5092c.f15432b == this.f15432b) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return ((this.f15431a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f15432b).hashCode();
        }
    }

    /* renamed from: a */
    public static void m44a(List<C5077c<?>> list) {
        int i;
        Set<C5091b> set;
        HashMap hashMap = new HashMap(list.size());
        for (C5077c<?> c5077c : list) {
            C5091b c5091b = new C5091b(c5077c);
            for (Class<? super Object> cls : c5077c.f15402a) {
                boolean z = !c5077c.m55b();
                C5092c c5092c = new C5092c(cls, z, null);
                if (!hashMap.containsKey(c5092c)) {
                    hashMap.put(c5092c, new HashSet());
                }
                Set set2 = (Set) hashMap.get(c5092c);
                if (!set2.isEmpty() && !z) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
                set2.add(c5091b);
            }
        }
        for (Set<C5091b> set3 : hashMap.values()) {
            for (C5091b c5091b2 : set3) {
                for (C5093m c5093m : c5091b2.f15428a.f15403b) {
                    if ((c5093m.f15435c == 0) && (set = (Set) hashMap.get(new C5092c(c5093m.f15433a, c5093m.m42a(), null))) != null) {
                        for (C5091b c5091b3 : set) {
                            c5091b2.f15429b.add(c5091b3);
                            c5091b3.f15430c.add(c5091b2);
                        }
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (Set set4 : hashMap.values()) {
            hashSet.addAll(set4);
        }
        HashSet hashSet2 = new HashSet();
        Iterator it2 = hashSet.iterator();
        while (true) {
            i = 0;
            if (it2.hasNext()) {
                C5091b c5091b4 = (C5091b) it2.next();
                if (c5091b4.m43a()) {
                    hashSet2.add(c5091b4);
                }
            }
        }
        while (!hashSet2.isEmpty()) {
            C5091b c5091b5 = (C5091b) hashSet2.iterator().next();
            hashSet2.remove(c5091b5);
            int i2 = i + 1;
            Iterator<C5091b> it3 = c5091b5.f15429b.iterator();
            while (true) {
                i = i2;
                if (it3.hasNext()) {
                    C5091b next = it3.next();
                    next.f15430c.remove(c5091b5);
                    if (next.m43a()) {
                        hashSet2.add(next);
                    }
                }
            }
        }
        if (i == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it4 = hashSet.iterator();
        while (it4.hasNext()) {
            C5091b c5091b6 = (C5091b) it4.next();
            if (!c5091b6.m43a() && !c5091b6.f15429b.isEmpty()) {
                arrayList.add(c5091b6.f15428a);
            }
        }
        throw new DependencyCycleException(arrayList);
    }
}
