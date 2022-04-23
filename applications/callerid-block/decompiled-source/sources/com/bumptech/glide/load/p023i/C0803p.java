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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.i.p$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/p$a.class */
    public static class C0804a {

        /* renamed from: a */
        private final Map<Class<?>, C0805a<?>> f3676a = new HashMap();

        /* JADX INFO: Access modifiers changed from: private */
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

        /* renamed from: b */
        public <Model> List<AbstractC0800n<Model, ?>> m10972b(Class<Model> cls) {
            C0805a<?> aVar = this.f3676a.get(cls);
            return aVar == null ? null : (List<AbstractC0800n<Model, ?>>) aVar.f3677a;
        }

        /* renamed from: c */
        public <Model> void m10971c(Class<Model> cls, List<AbstractC0800n<Model, ?>> list) {
            if (this.f3676a.put(cls, new C0805a<>(list)) != null) {
                throw new IllegalStateException("Already cached loaders for model: " + cls);
            }
        }
    }

    private C0803p(C0806r rVar) {
        this.f3675b = new C0804a();
        this.f3674a = rVar;
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
            List<AbstractC0800n<A, ?>> b = this.f3675b.m10972b(cls);
            list = b;
            if (b == null) {
                list = Collections.unmodifiableList(this.f3674a.m10966e(cls));
                this.f3675b.m10971c(cls, list);
            }
        }
        return list;
    }

    /* renamed from: a */
    public <Model, Data> void m10978a(Class<Model> cls, Class<Data> cls2, AbstractC0802o<? extends Model, ? extends Data> oVar) {
        synchronized (this) {
            this.f3674a.m10969b(cls, cls2, oVar);
            this.f3675b.m10973a();
        }
    }

    /* renamed from: c */
    public List<Class<?>> m10976c(Class<?> cls) {
        List<Class<?>> g;
        synchronized (this) {
            g = this.f3674a.m10964g(cls);
        }
        return g;
    }

    /* renamed from: d */
    public <A> List<AbstractC0800n<A, ?>> m10975d(A a) {
        List<AbstractC0800n<A, ?>> e = m10974e(m10977b(a));
        if (!e.isEmpty()) {
            int size = e.size();
            List<AbstractC0800n<A, ?>> emptyList = Collections.emptyList();
            boolean z = true;
            for (int i = 0; i < size; i++) {
                AbstractC0800n<A, ?> nVar = e.get(i);
                emptyList = emptyList;
                z = z;
                if (nVar.m10980b(a)) {
                    z = z;
                    if (z) {
                        emptyList = new ArrayList<>(size - i);
                        z = false;
                    }
                    emptyList.add(nVar);
                    emptyList = emptyList;
                }
            }
            if (!emptyList.isEmpty()) {
                return emptyList;
            }
            throw new Registry.NoModelLoaderAvailableException(a, e);
        }
        throw new Registry.NoModelLoaderAvailableException(a);
    }
}
