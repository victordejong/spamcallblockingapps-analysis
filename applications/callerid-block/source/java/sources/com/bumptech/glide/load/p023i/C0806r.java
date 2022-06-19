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

    /* renamed from: com.bumptech.glide.load.i.r$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/r$b.class */
    public static class C0807b<Model, Data> {

        /* renamed from: a */
        private final Class<Model> f3684a;

        /* renamed from: b */
        final Class<Data> f3685b;

        /* renamed from: c */
        final AbstractC0802o<? extends Model, ? extends Data> f3686c;

        public C0807b(Class<Model> cls, Class<Data> cls2, AbstractC0802o<? extends Model, ? extends Data> abstractC0802o) {
            this.f3684a = cls;
            this.f3685b = cls2;
            this.f3686c = abstractC0802o;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.i.r$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/r$c.class */
    public static class C0808c {
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

    C0806r(e<List<Throwable>> eVar, C0808c c0808c) {
        this.f3680a = new ArrayList();
        this.f3682c = new HashSet();
        this.f3683d = eVar;
        this.f3681b = c0808c;
    }

    /* renamed from: a */
    private <Model, Data> void m10970a(Class<Model> cls, Class<Data> cls2, AbstractC0802o<? extends Model, ? extends Data> abstractC0802o, boolean z) {
        C0807b<?, ?> c0807b = new C0807b<>(cls, cls2, abstractC0802o);
        List<C0807b<?, ?>> list = this.f3680a;
        list.add(z ? list.size() : 0, c0807b);
    }

    /* renamed from: c */
    private <Model, Data> AbstractC0800n<Model, Data> m10968c(C0807b<?, ?> c0807b) {
        AbstractC0800n<? extends Object, ? extends Object> m10979b = c0807b.f3686c.m10979b(this);
        C0856j.m10759d(m10979b);
        return (AbstractC0800n<Model, Data>) m10979b;
    }

    /* renamed from: f */
    private static <Model, Data> AbstractC0800n<Model, Data> m10965f() {
        return (AbstractC0800n<Model, Data>) f3679f;
    }

    /* renamed from: b */
    public <Model, Data> void m10969b(Class<Model> cls, Class<Data> cls2, AbstractC0802o<? extends Model, ? extends Data> abstractC0802o) {
        synchronized (this) {
            m10970a(cls, cls2, abstractC0802o, true);
        }
    }

    /* renamed from: d */
    public <Model, Data> AbstractC0800n<Model, Data> m10967d(Class<Model> cls, Class<Data> cls2) {
        synchronized (this) {
            try {
                ArrayList arrayList = new ArrayList();
                boolean z = false;
                for (C0807b<?, ?> c0807b : this.f3680a) {
                    if (this.f3682c.contains(c0807b)) {
                        z = true;
                    } else if (c0807b.m10962b(cls, cls2)) {
                        this.f3682c.add(c0807b);
                        arrayList.add(m10968c(c0807b));
                        this.f3682c.remove(c0807b);
                    }
                }
                if (arrayList.size() > 1) {
                    return this.f3681b.m10961a(arrayList, this.f3683d);
                } else if (arrayList.size() == 1) {
                    return (AbstractC0800n) arrayList.get(0);
                } else if (!z) {
                    throw new Registry.NoModelLoaderAvailableException(cls, cls2);
                } else {
                    return m10965f();
                }
            } finally {
                throw th;
            }
        }
    }

    /* renamed from: e */
    public <Model> List<AbstractC0800n<Model, ?>> m10966e(Class<Model> cls) {
        ArrayList arrayList;
        synchronized (this) {
            try {
                arrayList = new ArrayList();
                for (C0807b<?, ?> c0807b : this.f3680a) {
                    if (!this.f3682c.contains(c0807b) && c0807b.m10963a(cls)) {
                        this.f3682c.add(c0807b);
                        arrayList.add(m10968c(c0807b));
                        this.f3682c.remove(c0807b);
                    }
                }
            } finally {
                throw th;
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public List<Class<?>> m10964g(Class<?> cls) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (C0807b<?, ?> c0807b : this.f3680a) {
                if (!arrayList.contains(c0807b.f3685b) && c0807b.m10963a(cls)) {
                    arrayList.add(c0807b.f3685b);
                }
            }
        }
        return arrayList;
    }
}
