package p193e.p1451f.p1452a.p1475q;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
/* renamed from: e.f.a.q.e */
/* loaded from: classes-dex2jar.jar:e/f/a/q/e.class */
public class C22581e {

    /* renamed from: a */
    public final List<String> f62517a = new ArrayList();

    /* renamed from: b */
    public final Map<String, List<C22582a<?, ?>>> f62518b = new HashMap();

    /* renamed from: e.f.a.q.e$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/q/e$a.class */
    public static class C22582a<T, R> {

        /* renamed from: a */
        public final Class<T> f62519a;

        /* renamed from: b */
        public final Class<R> f62520b;

        /* renamed from: c */
        public final AbstractC22269k<T, R> f62521c;

        public C22582a(Class<T> cls, Class<R> cls2, AbstractC22269k<T, R> abstractC22269k) {
            this.f62519a = cls;
            this.f62520b = cls2;
            this.f62521c = abstractC22269k;
        }

        /* renamed from: a */
        public boolean m8115a(Class<?> cls, Class<?> cls2) {
            return this.f62519a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f62520b);
        }
    }

    /* renamed from: a */
    public final List<C22582a<?, ?>> m8117a(String str) {
        List<C22582a<?, ?>> list;
        synchronized (this) {
            if (!this.f62517a.contains(str)) {
                this.f62517a.add(str);
            }
            List<C22582a<?, ?>> list2 = this.f62518b.get(str);
            list = list2;
            if (list2 == null) {
                list = new ArrayList<>();
                this.f62518b.put(str, list);
            }
        }
        return list;
    }

    /* renamed from: b */
    public <T, R> List<Class<R>> m8116b(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.f62517a) {
                List<C22582a<?, ?>> list = this.f62518b.get(str);
                if (list != null) {
                    for (C22582a<?, ?> c22582a : list) {
                        if (c22582a.m8115a(cls, cls2) && !arrayList.contains(c22582a.f62520b)) {
                            arrayList.add(c22582a.f62520b);
                        }
                    }
                }
            }
        }
        return arrayList;
    }
}
