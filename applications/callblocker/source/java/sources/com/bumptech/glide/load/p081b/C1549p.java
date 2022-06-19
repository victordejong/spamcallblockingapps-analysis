package com.bumptech.glide.load.p081b;

import androidx.core.p025g.C0523e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.b.p */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/p.class */
public class C1549p {

    /* renamed from: a */
    private final C1554r f4906a;

    /* renamed from: b */
    private final C1550a f4907b;

    /* renamed from: com.bumptech.glide.load.b.p$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/p$a.class */
    public static class C1550a {

        /* renamed from: a */
        private final Map<Class<?>, C1551a<?>> f4908a = new HashMap();

        /* renamed from: com.bumptech.glide.load.b.p$a$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/p$a$a.class */
        public static class C1551a<Model> {

            /* renamed from: a */
            final List<AbstractC1546n<Model, ?>> f4909a;

            public C1551a(List<AbstractC1546n<Model, ?>> list) {
                this.f4909a = list;
            }
        }

        C1550a() {
        }

        /* renamed from: a */
        public <Model> List<AbstractC1546n<Model, ?>> m16836a(Class<Model> cls) {
            C1551a<?> c1551a = this.f4908a.get(cls);
            return (List<AbstractC1546n<Model, ?>>) (c1551a == null ? null : c1551a.f4909a);
        }

        /* renamed from: a */
        public void m16837a() {
            this.f4908a.clear();
        }

        /* renamed from: a */
        public <Model> void m16835a(Class<Model> cls, List<AbstractC1546n<Model, ?>> list) {
            if (this.f4908a.put(cls, new C1551a<>(list)) != null) {
                throw new IllegalStateException("Already cached loaders for model: " + cls);
            }
        }
    }

    public C1549p(C0523e.AbstractC0524a<List<Throwable>> abstractC0524a) {
        this(new C1554r(abstractC0524a));
    }

    private C1549p(C1554r c1554r) {
        this.f4907b = new C1550a();
        this.f4906a = c1554r;
    }

    /* renamed from: b */
    private static <A> Class<A> m16838b(A a) {
        return (Class<A>) a.getClass();
    }

    /* renamed from: b */
    private <A> List<AbstractC1546n<A, ?>> m16839b(Class<A> cls) {
        List<AbstractC1546n<A, ?>> list;
        synchronized (this) {
            List<AbstractC1546n<A, ?>> m16836a = this.f4907b.m16836a(cls);
            list = m16836a;
            if (m16836a == null) {
                list = Collections.unmodifiableList(this.f4906a.m16831a(cls));
                this.f4907b.m16835a(cls, list);
            }
        }
        return list;
    }

    /* renamed from: a */
    public List<Class<?>> m16842a(Class<?> cls) {
        List<Class<?>> m16827b;
        synchronized (this) {
            m16827b = this.f4906a.m16827b(cls);
        }
        return m16827b;
    }

    /* renamed from: a */
    public <A> List<AbstractC1546n<A, ?>> m16840a(A a) {
        List<AbstractC1546n<A, ?>> m16839b = m16839b((Class) m16838b(a));
        int size = m16839b.size();
        boolean z = true;
        ArrayList emptyList = Collections.emptyList();
        int i = 0;
        while (i < size) {
            AbstractC1546n<A, ?> abstractC1546n = m16839b.get(i);
            List<AbstractC1546n<A, ?>> list = emptyList;
            boolean z2 = z;
            if (abstractC1546n.mo16803a(a)) {
                z2 = z;
                if (z) {
                    emptyList = new ArrayList(size - i);
                    z2 = false;
                }
                emptyList.add(abstractC1546n);
                list = emptyList;
            }
            i++;
            emptyList = list;
            z = z2;
        }
        return emptyList;
    }

    /* renamed from: a */
    public <Model, Data> void m16841a(Class<Model> cls, Class<Data> cls2, AbstractC1548o<? extends Model, ? extends Data> abstractC1548o) {
        synchronized (this) {
            this.f4906a.m16829a(cls, cls2, abstractC1548o);
            this.f4907b.m16837a();
        }
    }
}
