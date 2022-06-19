package com.bumptech.glide.load.p212i;

import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p020b.p041h.p049k.AbstractC1594e;
/* renamed from: com.bumptech.glide.load.i.p */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/p.class */
public class C4194p {

    /* renamed from: a */
    private final C4199r f13062a;

    /* renamed from: b */
    private final C4195a f13063b;

    /* renamed from: com.bumptech.glide.load.i.p$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/p$a.class */
    public static class C4195a {

        /* renamed from: a */
        private final Map<Class<?>, C4196a<?>> f13064a = new HashMap();

        /* renamed from: com.bumptech.glide.load.i.p$a$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/p$a$a.class */
        public static class C4196a<Model> {

            /* renamed from: a */
            final List<AbstractC4191n<Model, ?>> f13065a;

            public C4196a(List<AbstractC4191n<Model, ?>> list) {
                this.f13065a = list;
            }
        }

        C4195a() {
        }

        /* renamed from: a */
        public void m23130a() {
            this.f13064a.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public <Model> List<AbstractC4191n<Model, ?>> m23129b(Class<Model> cls) {
            C4196a<?> c4196a = this.f13064a.get(cls);
            return c4196a == null ? null : c4196a.f13065a;
        }

        /* renamed from: c */
        public <Model> void m23128c(Class<Model> cls, List<AbstractC4191n<Model, ?>> list) {
            if (this.f13064a.put(cls, new C4196a<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + cls);
        }
    }

    public C4194p(AbstractC1594e<List<Throwable>> abstractC1594e) {
        this(new C4199r(abstractC1594e));
    }

    private C4194p(C4199r c4199r) {
        this.f13063b = new C4195a();
        this.f13062a = c4199r;
    }

    /* renamed from: b */
    private static <A> Class<A> m23134b(A a) {
        return (Class<A>) a.getClass();
    }

    /* renamed from: e */
    private <A> List<AbstractC4191n<A, ?>> m23131e(Class<A> cls) {
        List<AbstractC4191n<A, ?>> list;
        synchronized (this) {
            List<AbstractC4191n<A, ?>> m23129b = this.f13063b.m23129b(cls);
            list = m23129b;
            if (m23129b == null) {
                list = Collections.unmodifiableList(this.f13062a.m23120e(cls));
                this.f13063b.m23128c(cls, list);
            }
        }
        return list;
    }

    /* renamed from: a */
    public <Model, Data> void m23135a(Class<Model> cls, Class<Data> cls2, AbstractC4193o<? extends Model, ? extends Data> abstractC4193o) {
        synchronized (this) {
            this.f13062a.m23123b(cls, cls2, abstractC4193o);
            this.f13063b.m23130a();
        }
    }

    /* renamed from: c */
    public List<Class<?>> m23133c(Class<?> cls) {
        List<Class<?>> m23118g;
        synchronized (this) {
            m23118g = this.f13062a.m23118g(cls);
        }
        return m23118g;
    }

    /* renamed from: d */
    public <A> List<AbstractC4191n<A, ?>> m23132d(A a) {
        List<AbstractC4191n<A, ?>> m23131e = m23131e(m23134b(a));
        if (!m23131e.isEmpty()) {
            int size = m23131e.size();
            ArrayList emptyList = Collections.emptyList();
            boolean z = true;
            int i = 0;
            while (i < size) {
                AbstractC4191n<A, ?> abstractC4191n = m23131e.get(i);
                List<AbstractC4191n<A, ?>> list = emptyList;
                boolean z2 = z;
                if (abstractC4191n.mo23082a(a)) {
                    z2 = z;
                    if (z) {
                        emptyList = new ArrayList(size - i);
                        z2 = false;
                    }
                    emptyList.add(abstractC4191n);
                    list = emptyList;
                }
                i++;
                emptyList = list;
                z = z2;
            }
            if (emptyList.isEmpty()) {
                throw new Registry.NoModelLoaderAvailableException(a, m23131e);
            }
            return emptyList;
        }
        throw new Registry.NoModelLoaderAvailableException(a);
    }
}
