package com.bumptech.glide.load.p212i;

import com.bumptech.glide.Registry;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.p223p.C4382j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p020b.p041h.p049k.AbstractC1594e;
/* renamed from: com.bumptech.glide.load.i.r */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/r.class */
public class C4199r {

    /* renamed from: a */
    private static final C4202c f13075a = new C4202c();

    /* renamed from: b */
    private static final AbstractC4191n<Object, Object> f13076b = new C4200a();

    /* renamed from: c */
    private final List<C4201b<?, ?>> f13077c;

    /* renamed from: d */
    private final C4202c f13078d;

    /* renamed from: e */
    private final Set<C4201b<?, ?>> f13079e;

    /* renamed from: f */
    private final AbstractC1594e<List<Throwable>> f13080f;

    /* renamed from: com.bumptech.glide.load.i.r$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/r$a.class */
    private static class C4200a implements AbstractC4191n<Object, Object> {
        C4200a() {
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4191n
        /* renamed from: a */
        public boolean mo23082a(Object obj) {
            return false;
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4191n
        /* renamed from: b */
        public AbstractC4191n.C4192a<Object> mo23081b(Object obj, int i, int i2, C4032e c4032e) {
            return null;
        }
    }

    /* renamed from: com.bumptech.glide.load.i.r$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/r$b.class */
    public static class C4201b<Model, Data> {

        /* renamed from: a */
        private final Class<Model> f13081a;

        /* renamed from: b */
        final Class<Data> f13082b;

        /* renamed from: c */
        final AbstractC4193o<? extends Model, ? extends Data> f13083c;

        public C4201b(Class<Model> cls, Class<Data> cls2, AbstractC4193o<? extends Model, ? extends Data> abstractC4193o) {
            this.f13081a = cls;
            this.f13082b = cls2;
            this.f13083c = abstractC4193o;
        }

        /* renamed from: a */
        public boolean m23117a(Class<?> cls) {
            return this.f13081a.isAssignableFrom(cls);
        }

        /* renamed from: b */
        public boolean m23116b(Class<?> cls, Class<?> cls2) {
            return m23117a(cls) && this.f13082b.isAssignableFrom(cls2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.i.r$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/r$c.class */
    public static class C4202c {
        C4202c() {
        }

        /* renamed from: a */
        public <Model, Data> C4197q<Model, Data> m23115a(List<AbstractC4191n<Model, Data>> list, AbstractC1594e<List<Throwable>> abstractC1594e) {
            return new C4197q<>(list, abstractC1594e);
        }
    }

    public C4199r(AbstractC1594e<List<Throwable>> abstractC1594e) {
        this(abstractC1594e, f13075a);
    }

    C4199r(AbstractC1594e<List<Throwable>> abstractC1594e, C4202c c4202c) {
        this.f13077c = new ArrayList();
        this.f13079e = new HashSet();
        this.f13080f = abstractC1594e;
        this.f13078d = c4202c;
    }

    /* renamed from: a */
    private <Model, Data> void m23124a(Class<Model> cls, Class<Data> cls2, AbstractC4193o<? extends Model, ? extends Data> abstractC4193o, boolean z) {
        C4201b<?, ?> c4201b = new C4201b<>(cls, cls2, abstractC4193o);
        List<C4201b<?, ?>> list = this.f13077c;
        list.add(z ? list.size() : 0, c4201b);
    }

    /* renamed from: c */
    private <Model, Data> AbstractC4191n<Model, Data> m23122c(C4201b<?, ?> c4201b) {
        return (AbstractC4191n) C4382j.m22719d(c4201b.f13083c.mo23078b(this));
    }

    /* renamed from: f */
    private static <Model, Data> AbstractC4191n<Model, Data> m23119f() {
        return (AbstractC4191n<Model, Data>) f13076b;
    }

    /* renamed from: b */
    public <Model, Data> void m23123b(Class<Model> cls, Class<Data> cls2, AbstractC4193o<? extends Model, ? extends Data> abstractC4193o) {
        synchronized (this) {
            m23124a(cls, cls2, abstractC4193o, true);
        }
    }

    /* renamed from: d */
    public <Model, Data> AbstractC4191n<Model, Data> m23121d(Class<Model> cls, Class<Data> cls2) {
        synchronized (this) {
            try {
                ArrayList arrayList = new ArrayList();
                boolean z = false;
                for (C4201b<?, ?> c4201b : this.f13077c) {
                    if (this.f13079e.contains(c4201b)) {
                        z = true;
                    } else if (c4201b.m23116b(cls, cls2)) {
                        this.f13079e.add(c4201b);
                        arrayList.add(m23122c(c4201b));
                        this.f13079e.remove(c4201b);
                    }
                }
                if (arrayList.size() > 1) {
                    return this.f13078d.m23115a(arrayList, this.f13080f);
                } else if (arrayList.size() == 1) {
                    return (AbstractC4191n) arrayList.get(0);
                } else if (!z) {
                    throw new Registry.NoModelLoaderAvailableException((Class<?>) cls, (Class<?>) cls2);
                } else {
                    return m23119f();
                }
            } finally {
                throw th;
            }
        }
    }

    /* renamed from: e */
    public <Model> List<AbstractC4191n<Model, ?>> m23120e(Class<Model> cls) {
        ArrayList arrayList;
        synchronized (this) {
            try {
                arrayList = new ArrayList();
                for (C4201b<?, ?> c4201b : this.f13077c) {
                    if (!this.f13079e.contains(c4201b) && c4201b.m23117a(cls)) {
                        this.f13079e.add(c4201b);
                        arrayList.add(m23122c(c4201b));
                        this.f13079e.remove(c4201b);
                    }
                }
            } finally {
                throw th;
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public List<Class<?>> m23118g(Class<?> cls) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (C4201b<?, ?> c4201b : this.f13077c) {
                if (!arrayList.contains(c4201b.f13082b) && c4201b.m23117a(cls)) {
                    arrayList.add(c4201b.f13082b);
                }
            }
        }
        return arrayList;
    }
}
