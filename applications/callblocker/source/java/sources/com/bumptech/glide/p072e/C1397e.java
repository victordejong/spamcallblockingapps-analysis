package com.bumptech.glide.p072e;

import com.bumptech.glide.load.AbstractC1782i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.e.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/e.class */
public class C1397e {

    /* renamed from: a */
    private final List<String> f4615a = new ArrayList();

    /* renamed from: b */
    private final Map<String, List<C1398a<?, ?>>> f4616b = new HashMap();

    /* renamed from: com.bumptech.glide.e.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/e$a.class */
    public static class C1398a<T, R> {

        /* renamed from: a */
        final Class<R> f4617a;

        /* renamed from: b */
        final AbstractC1782i<T, R> f4618b;

        /* renamed from: c */
        private final Class<T> f4619c;

        public C1398a(Class<T> cls, Class<R> cls2, AbstractC1782i<T, R> abstractC1782i) {
            this.f4619c = cls;
            this.f4617a = cls2;
            this.f4618b = abstractC1782i;
        }

        /* renamed from: a */
        public boolean m17204a(Class<?> cls, Class<?> cls2) {
            return this.f4619c.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f4617a);
        }
    }

    /* renamed from: a */
    private List<C1398a<?, ?>> m17208a(String str) {
        List<C1398a<?, ?>> list;
        synchronized (this) {
            if (!this.f4615a.contains(str)) {
                this.f4615a.add(str);
            }
            List<C1398a<?, ?>> list2 = this.f4616b.get(str);
            list = list2;
            if (list2 == null) {
                list = new ArrayList<>();
                this.f4616b.put(str, list);
            }
        }
        return list;
    }

    /* renamed from: a */
    public <T, R> List<AbstractC1782i<T, R>> m17209a(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.f4615a) {
                List<C1398a<?, ?>> list = this.f4616b.get(str);
                if (list != null) {
                    for (C1398a<?, ?> c1398a : list) {
                        if (c1398a.m17204a(cls, cls2)) {
                            arrayList.add(c1398a.f4618b);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public <T, R> void m17207a(String str, AbstractC1782i<T, R> abstractC1782i, Class<T> cls, Class<R> cls2) {
        synchronized (this) {
            m17208a(str).add(new C1398a<>(cls, cls2, abstractC1782i));
        }
    }

    /* renamed from: a */
    public void m17206a(List<String> list) {
        synchronized (this) {
            ArrayList<String> arrayList = new ArrayList(this.f4615a);
            this.f4615a.clear();
            this.f4615a.addAll(list);
            for (String str : arrayList) {
                if (!list.contains(str)) {
                    this.f4615a.add(str);
                }
            }
        }
    }

    /* renamed from: b */
    public <T, R> List<Class<R>> m17205b(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.f4615a) {
                List<C1398a<?, ?>> list = this.f4616b.get(str);
                if (list != null) {
                    for (C1398a<?, ?> c1398a : list) {
                        if (c1398a.m17204a(cls, cls2) && !arrayList.contains(c1398a.f4617a)) {
                            arrayList.add(c1398a.f4617a);
                        }
                    }
                }
            }
        }
        return arrayList;
    }
}
