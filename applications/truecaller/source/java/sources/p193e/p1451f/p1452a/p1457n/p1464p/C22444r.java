package p193e.p1451f.p1452a.p1457n.p1464p;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p193e.p1451f.p1452a.C22228g;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
/* renamed from: e.f.a.n.p.r */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/r.class */
public class C22444r {

    /* renamed from: e */
    public static final C22447c f62299e = new C22447c();

    /* renamed from: f */
    public static final AbstractC22436n<Object, Object> f62300f = new C22445a();

    /* renamed from: b */
    public final C22447c f62302b;

    /* renamed from: d */
    public final AbstractC26555e<List<Throwable>> f62304d;

    /* renamed from: a */
    public final List<C22446b<?, ?>> f62301a = new ArrayList();

    /* renamed from: c */
    public final Set<C22446b<?, ?>> f62303c = new HashSet();

    /* renamed from: e.f.a.n.p.r$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/r$a.class */
    public static class C22445a implements AbstractC22436n<Object, Object> {
        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
        /* renamed from: a */
        public AbstractC22436n.C22437a<Object> mo8215a(Object obj, int i, int i2, C22267i c22267i) {
            return null;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
        /* renamed from: b */
        public boolean mo8214b(Object obj) {
            return false;
        }
    }

    /* renamed from: e.f.a.n.p.r$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/r$b.class */
    public static class C22446b<Model, Data> {

        /* renamed from: a */
        public final Class<Model> f62305a;

        /* renamed from: b */
        public final Class<Data> f62306b;

        /* renamed from: c */
        public final AbstractC22438o<? extends Model, ? extends Data> f62307c;

        public C22446b(Class<Model> cls, Class<Data> cls2, AbstractC22438o<? extends Model, ? extends Data> abstractC22438o) {
            this.f62305a = cls;
            this.f62306b = cls2;
            this.f62307c = abstractC22438o;
        }

        /* renamed from: a */
        public boolean m8222a(Class<?> cls, Class<?> cls2) {
            return this.f62305a.isAssignableFrom(cls) && this.f62306b.isAssignableFrom(cls2);
        }
    }

    /* renamed from: e.f.a.n.p.r$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/r$c.class */
    public static class C22447c {
    }

    public C22444r(AbstractC26555e<List<Throwable>> abstractC26555e) {
        C22447c c22447c = f62299e;
        this.f62304d = abstractC26555e;
        this.f62302b = c22447c;
    }

    /* renamed from: a */
    public <Model, Data> void m8228a(Class<Model> cls, Class<Data> cls2, AbstractC22438o<? extends Model, ? extends Data> abstractC22438o) {
        synchronized (this) {
            C22446b<?, ?> c22446b = new C22446b<>(cls, cls2, abstractC22438o);
            List<C22446b<?, ?>> list = this.f62301a;
            list.add(list.size(), c22446b);
        }
    }

    /* renamed from: b */
    public final <Model, Data> AbstractC22436n<Model, Data> m8227b(C22446b<?, ?> c22446b) {
        AbstractC22436n<Model, Data> abstractC22436n = (AbstractC22436n<Model, Data>) c22446b.f62307c.mo8212c(this);
        Objects.requireNonNull(abstractC22436n, "Argument must not be null");
        return abstractC22436n;
    }

    /* renamed from: c */
    public <Model, Data> AbstractC22436n<Model, Data> m8226c(Class<Model> cls, Class<Data> cls2) {
        synchronized (this) {
            try {
                ArrayList arrayList = new ArrayList();
                boolean z = false;
                for (C22446b<?, ?> c22446b : this.f62301a) {
                    if (this.f62303c.contains(c22446b)) {
                        z = true;
                    } else if (c22446b.m8222a(cls, cls2)) {
                        this.f62303c.add(c22446b);
                        arrayList.add(m8227b(c22446b));
                        this.f62303c.remove(c22446b);
                    }
                }
                if (arrayList.size() > 1) {
                    C22447c c22447c = this.f62302b;
                    AbstractC26555e<List<Throwable>> abstractC26555e = this.f62304d;
                    Objects.requireNonNull(c22447c);
                    return new C22442q(arrayList, abstractC26555e);
                } else if (arrayList.size() == 1) {
                    return (AbstractC22436n) arrayList.get(0);
                } else if (!z) {
                    throw new C22228g.C22231c(cls, cls2);
                } else {
                    return (AbstractC22436n<Model, Data>) f62300f;
                }
            } finally {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public <Model> List<AbstractC22436n<Model, ?>> m8225d(Class<Model> cls) {
        ArrayList arrayList;
        synchronized (this) {
            try {
                arrayList = new ArrayList();
                for (C22446b<?, ?> c22446b : this.f62301a) {
                    if (!this.f62303c.contains(c22446b) && c22446b.f62305a.isAssignableFrom(cls)) {
                        this.f62303c.add(c22446b);
                        AbstractC22436n<? extends Object, ? extends Object> mo8212c = c22446b.f62307c.mo8212c(this);
                        Objects.requireNonNull(mo8212c, "Argument must not be null");
                        arrayList.add(mo8212c);
                        this.f62303c.remove(c22446b);
                    }
                }
            } finally {
                throw th;
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public List<Class<?>> m8224e(Class<?> cls) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (C22446b<?, ?> c22446b : this.f62301a) {
                if (!arrayList.contains(c22446b.f62306b) && c22446b.f62305a.isAssignableFrom(cls)) {
                    arrayList.add(c22446b.f62306b);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public <Model, Data> List<AbstractC22438o<? extends Model, ? extends Data>> m8223f(Class<Model> cls, Class<Data> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            Iterator<C22446b<?, ?>> it = this.f62301a.iterator();
            while (it.hasNext()) {
                C22446b<?, ?> next = it.next();
                if (next.m8222a(cls, cls2)) {
                    it.remove();
                    arrayList.add(next.f62307c);
                }
            }
        }
        return arrayList;
    }
}
