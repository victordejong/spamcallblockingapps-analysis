package com.bumptech.glide.load.p081b;

import androidx.core.p025g.C0523e;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.p077h.C1456i;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.bumptech.glide.load.b.r */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/r.class */
public class C1554r {

    /* renamed from: a */
    private static final C1557c f4918a = new C1557c();

    /* renamed from: b */
    private static final AbstractC1546n<Object, Object> f4919b = new C1555a();

    /* renamed from: c */
    private final List<C1556b<?, ?>> f4920c;

    /* renamed from: d */
    private final C1557c f4921d;

    /* renamed from: e */
    private final Set<C1556b<?, ?>> f4922e;

    /* renamed from: f */
    private final C0523e.AbstractC0524a<List<Throwable>> f4923f;

    /* renamed from: com.bumptech.glide.load.b.r$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/r$a.class */
    private static class C1555a implements AbstractC1546n<Object, Object> {
        C1555a() {
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1546n
        /* renamed from: a */
        public AbstractC1546n.C1547a<Object> mo16802a(Object obj, int i, int i2, C1781h c1781h) {
            return null;
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1546n
        /* renamed from: a */
        public boolean mo16803a(Object obj) {
            return false;
        }
    }

    /* renamed from: com.bumptech.glide.load.b.r$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/r$b.class */
    public static class C1556b<Model, Data> {

        /* renamed from: a */
        final Class<Data> f4924a;

        /* renamed from: b */
        final AbstractC1548o<? extends Model, ? extends Data> f4925b;

        /* renamed from: c */
        private final Class<Model> f4926c;

        public C1556b(Class<Model> cls, Class<Data> cls2, AbstractC1548o<? extends Model, ? extends Data> abstractC1548o) {
            this.f4926c = cls;
            this.f4924a = cls2;
            this.f4925b = abstractC1548o;
        }

        /* renamed from: a */
        public boolean m16826a(Class<?> cls) {
            return this.f4926c.isAssignableFrom(cls);
        }

        /* renamed from: a */
        public boolean m16825a(Class<?> cls, Class<?> cls2) {
            return m16826a(cls) && this.f4924a.isAssignableFrom(cls2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.b.r$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/r$c.class */
    public static class C1557c {
        C1557c() {
        }

        /* renamed from: a */
        public <Model, Data> C1552q<Model, Data> m16824a(List<AbstractC1546n<Model, Data>> list, C0523e.AbstractC0524a<List<Throwable>> abstractC0524a) {
            return new C1552q<>(list, abstractC0524a);
        }
    }

    public C1554r(C0523e.AbstractC0524a<List<Throwable>> abstractC0524a) {
        this(abstractC0524a, f4918a);
    }

    C1554r(C0523e.AbstractC0524a<List<Throwable>> abstractC0524a, C1557c c1557c) {
        this.f4920c = new ArrayList();
        this.f4922e = new HashSet();
        this.f4923f = abstractC0524a;
        this.f4921d = c1557c;
    }

    /* renamed from: a */
    private static <Model, Data> AbstractC1546n<Model, Data> m16833a() {
        return (AbstractC1546n<Model, Data>) f4919b;
    }

    /* renamed from: a */
    private <Model, Data> AbstractC1546n<Model, Data> m16832a(C1556b<?, ?> c1556b) {
        return (AbstractC1546n) C1456i.m16989a(c1556b.f4925b.mo16801a(this));
    }

    /* renamed from: a */
    private <Model, Data> void m16828a(Class<Model> cls, Class<Data> cls2, AbstractC1548o<? extends Model, ? extends Data> abstractC1548o, boolean z) {
        this.f4920c.add(z ? this.f4920c.size() : 0, new C1556b<>(cls, cls2, abstractC1548o));
    }

    /* renamed from: a */
    public <Model, Data> AbstractC1546n<Model, Data> m16830a(Class<Model> cls, Class<Data> cls2) {
        C1552q<Model, Data> m16833a;
        synchronized (this) {
            try {
                ArrayList arrayList = new ArrayList();
                boolean z = false;
                for (C1556b<?, ?> c1556b : this.f4920c) {
                    if (this.f4922e.contains(c1556b)) {
                        z = true;
                    } else if (c1556b.m16825a(cls, cls2)) {
                        this.f4922e.add(c1556b);
                        arrayList.add(m16832a(c1556b));
                        this.f4922e.remove(c1556b);
                    }
                }
                if (arrayList.size() > 1) {
                    m16833a = this.f4921d.m16824a(arrayList, this.f4923f);
                } else if (arrayList.size() == 1) {
                    m16833a = (AbstractC1546n) arrayList.get(0);
                } else if (!z) {
                    throw new Registry.NoModelLoaderAvailableException(cls, cls2);
                } else {
                    m16833a = m16833a();
                }
            } finally {
                throw th;
            }
        }
        return m16833a;
    }

    /* renamed from: a */
    public <Model> List<AbstractC1546n<Model, ?>> m16831a(Class<Model> cls) {
        ArrayList arrayList;
        synchronized (this) {
            try {
                arrayList = new ArrayList();
                for (C1556b<?, ?> c1556b : this.f4920c) {
                    if (!this.f4922e.contains(c1556b) && c1556b.m16826a(cls)) {
                        this.f4922e.add(c1556b);
                        arrayList.add(m16832a(c1556b));
                        this.f4922e.remove(c1556b);
                    }
                }
            } finally {
                throw th;
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public <Model, Data> void m16829a(Class<Model> cls, Class<Data> cls2, AbstractC1548o<? extends Model, ? extends Data> abstractC1548o) {
        synchronized (this) {
            m16828a(cls, cls2, abstractC1548o, true);
        }
    }

    /* renamed from: b */
    public List<Class<?>> m16827b(Class<?> cls) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (C1556b<?, ?> c1556b : this.f4920c) {
                if (!arrayList.contains(c1556b.f4924a) && c1556b.m16826a(cls)) {
                    arrayList.add(c1556b.f4924a);
                }
            }
        }
        return arrayList;
    }
}
