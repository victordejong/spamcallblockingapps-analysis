package com.bumptech.glide.load.p023i;

import com.bumptech.glide.Registry;
import d.h.l.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.i.p */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/p.class */
public class C0803p {

    /* renamed from: a */
    private final C0806r f3674a;

    /* renamed from: b */
    private final C0804a f3675b;

    /* renamed from: com.bumptech.glide.load.i.p$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/p$a.class */
    public static class C0804a {

        /* renamed from: a */
        private final Map<Class<?>, C0805a<?>> f3676a = new HashMap();

        /* renamed from: com.bumptech.glide.load.i.p$a$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/p$a$a.class */
        public static class C0805a<Model> {

            /* renamed from: a */
            final List<AbstractC0800n<Model, ?>> f3677a;

            public C0805a(List<AbstractC0800n<Model, ?>> list) {
                this.f3677a = list;
            }
        }

        C0804a() {
        }

        /* renamed from: a */
        public void m10973a() {
            this.f3676a.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public <Model> List<AbstractC0800n<Model, ?>> m10972b(Class<Model> cls) {
            C0805a<?> c0805a = this.f3676a.get(cls);
            return c0805a == null ? null : c0805a.f3677a;
        }

        /* renamed from: c */
        public <Model> void m10971c(Class<Model> cls, List<AbstractC0800n<Model, ?>> list) {
            if (this.f3676a.put(cls, new C0805a<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + cls);
        }
    }

    private C0803p(C0806r c0806r) {
        this.f3675b = new C0804a();
        this.f3674a = c0806r;
    }

    public C0803p(e<List<Throwable>> eVar) {
        this(new C0806r(eVar));
    }

    /* renamed from: b */
    private static <A> Class<A> m10977b(A a) {
        return (Class<A>) a.getClass();
    }

    /* renamed from: e */
    private <A> List<AbstractC0800n<A, ?>> m10974e(Class<A> cls) {
        List<AbstractC0800n<A, ?>> list;
        synchronized (this) {
            List<AbstractC0800n<A, ?>> m10972b = this.f3675b.m10972b(cls);
            list = m10972b;
            if (m10972b == null) {
                list = Collections.unmodifiableList(this.f3674a.m10966e(cls));
                this.f3675b.m10971c(cls, list);
            }
        }
        return list;
    }

    /* renamed from: a */
    public <Model, Data> void m10978a(Class<Model> cls, Class<Data> cls2, AbstractC0802o<? extends Model, ? extends Data> abstractC0802o) {
        synchronized (this) {
            this.f3674a.m10969b(cls, cls2, abstractC0802o);
            this.f3675b.m10973a();
        }
    }

    /* renamed from: c */
    public List<Class<?>> m10976c(Class<?> cls) {
        List<Class<?>> m10964g;
        synchronized (this) {
            m10964g = this.f3674a.m10964g(cls);
        }
        return m10964g;
    }

    /* renamed from: d */
    public <A> List<AbstractC0800n<A, ?>> m10975d(A a) {
        List<AbstractC0800n<A, ?>> m10974e = m10974e(m10977b(a));
        if (!m10974e.isEmpty()) {
            int size = m10974e.size();
            ArrayList emptyList = Collections.emptyList();
            boolean z = true;
            int i = 0;
            while (i < size) {
                AbstractC0800n<A, ?> abstractC0800n = m10974e.get(i);
                List<AbstractC0800n<A, ?>> list = emptyList;
                boolean z2 = z;
                if (abstractC0800n.m10980b(a)) {
                    z2 = z;
                    if (z) {
                        emptyList = new ArrayList(size - i);
                        z2 = false;
                    }
                    emptyList.add(abstractC0800n);
                    list = emptyList;
                }
                i++;
                emptyList = list;
                z = z2;
            }
            if (emptyList.isEmpty()) {
                throw new Registry.NoModelLoaderAvailableException(a, m10974e);
            }
            return emptyList;
        }
        throw new Registry.NoModelLoaderAvailableException(a);
    }
}
