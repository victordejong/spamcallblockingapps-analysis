package com.bumptech.glide.load.p023i;

import com.bumptech.glide.Registry;
import com.bumptech.glide.p029o.C0856j;
import d.h.l.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.bumptech.glide.load.i.r */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/r.class */
public class C0806r {

    /* renamed from: e */
    private static final C0808c f3678e = new C0808c();

    /* renamed from: f */
    private static final AbstractC0800n<Object, Object> f3679f = new a();

    /* renamed from: a */
    private final List<C0807b<?, ?>> f3680a;

    /* renamed from: b */
    private final C0808c f3681b;

    /* renamed from: c */
    private final Set<C0807b<?, ?>> f3682c;

    /* renamed from: d */
    private final e<List<Throwable>> f3683d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.i.r$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/r$b.class */
    public static class C0807b<Model, Data> {

        /* renamed from: a */
        private final Class<Model> f3684a;

        /* renamed from: b */
        final Class<Data> f3685b;

        /* renamed from: c */
        final AbstractC0802o<? extends Model, ? extends Data> f3686c;

        public C0807b(Class<Model> cls, Class<Data> cls2, AbstractC0802o<? extends Model, ? extends Data> oVar) {
            this.f3684a = cls;
            this.f3685b = cls2;
            this.f3686c = oVar;
        }

        /* renamed from: a */
        public boolean m10963a(Class<?> cls) {
            return this.f3684a.isAssignableFrom(cls);
        }

        /* renamed from: b */
        public boolean m10962b(Class<?> cls, Class<?> cls2) {
            return m10963a(cls) && this.f3685b.isAssignableFrom(cls2);
        }
    }

    /* renamed from: com.bumptech.glide.load.i.r$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/r$c.class */
    static class C0808c {
        C0808c() {
        }

        /* renamed from: a */
        public <Model, Data> q<Model, Data> m10961a(List<AbstractC0800n<Model, Data>> list, e<List<Throwable>> eVar) {
            return new q<>(list, eVar);
        }
    }

    public C0806r(e<List<Throwable>> eVar) {
        this(eVar, f3678e);
    }

    C0806r(e<List<Throwable>> eVar, C0808c cVar) {
        this.f3680a = new ArrayList();
        this.f3682c = new HashSet();
        this.f3683d = eVar;
        this.f3681b = cVar;
    }

    /* renamed from: a */
    private <Model, Data> void m10970a(Class<Model> cls, Class<Data> cls2, AbstractC0802o<? extends Model, ? extends Data> oVar, boolean z) {
        C0807b<?, ?> bVar = new C0807b<>(cls, cls2, oVar);
        List<C0807b<?, ?>> list = this.f3680a;
        list.add(z ? list.size() : 0, bVar);
    }

    /* renamed from: c */
    private <Model, Data> AbstractC0800n<Model, Data> m10968c(C0807b<?, ?> bVar) {
        AbstractC0800n<? extends Object, ? extends Object> b = bVar.f3686c.m10979b(this);
        C0856j.m10759d(b);
        return (AbstractC0800n<Model, Data>) b;
    }

    /* renamed from: f */
    private static <Model, Data> AbstractC0800n<Model, Data> m10965f() {
        return (AbstractC0800n<Model, Data>) f3679f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public <Model, Data> void m10969b(Class<Model> cls, Class<Data> cls2, AbstractC0802o<? extends Model, ? extends Data> oVar) {
        synchronized (this) {
            m10970a(cls, cls2, oVar, true);
        }
    }

    /* renamed from: d */
    public <Model, Data> AbstractC0800n<Model, Data> m10967d(Class<Model> cls, Class<Data> cls2) {
        synchronized (this) {
            try {
                ArrayList arrayList = new ArrayList();
                boolean z = false;
                for (C0807b<?, ?> bVar : this.f3680a) {
                    if (this.f3682c.contains(bVar)) {
                        z = true;
                    } else if (bVar.m10962b(cls, cls2)) {
                        this.f3682c.add(bVar);
                        arrayList.add(m10968c(bVar));
                        this.f3682c.remove(bVar);
                    }
                }
                if (arrayList.size() > 1) {
                    return this.f3681b.m10961a(arrayList, this.f3683d);
                } else if (arrayList.size() == 1) {
                    return (AbstractC0800n) arrayList.get(0);
                } else if (z) {
                    return m10965f();
                } else {
                    throw new Registry.NoModelLoaderAvailableException(cls, cls2);
                }
            } finally {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public <Model> List<AbstractC0800n<Model, ?>> m10966e(Class<Model> cls) {
        ArrayList arrayList;
        synchronized (this) {
            try {
                arrayList = new ArrayList();
                for (C0807b<?, ?> bVar : this.f3680a) {
                    if (!this.f3682c.contains(bVar) && bVar.m10963a(cls)) {
                        this.f3682c.add(bVar);
                        arrayList.add(m10968c(bVar));
                        this.f3682c.remove(bVar);
                    }
                }
            } finally {
                throw th;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public List<Class<?>> m10964g(Class<?> cls) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (C0807b<?, ?> bVar : this.f3680a) {
                if (!arrayList.contains(bVar.f3685b) && bVar.m10963a(cls)) {
                    arrayList.add(bVar.f3685b);
                }
            }
        }
        return arrayList;
    }
}
