package p193e.p1451f.p1452a.p1457n.p1460o;

import e.f.a.n.q.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p193e.p1451f.p1452a.C22226e;
import p193e.p1451f.p1452a.C22228g;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.AbstractC22271m;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.C22369l;
import p193e.p1451f.p1452a.p1457n.p1460o.RunnableC22354i;
import p193e.p1451f.p1452a.p1457n.p1460o.p1462c0.AbstractC22322a;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1466q.p1472i.C22551f;
import p193e.p1451f.p1452a.p1457n.p1466q.p1472i.C22553g;
import p193e.p1451f.p1452a.p1475q.C22579c;
import p193e.p1451f.p1452a.p1475q.C22581e;
import p193e.p1451f.p1452a.p1480t.C22622i;
/* renamed from: e.f.a.n.o.h */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/h.class */
public final class C22353h<Transcode> {

    /* renamed from: a */
    public final List<AbstractC22436n.C22437a<?>> f62051a = new ArrayList();

    /* renamed from: b */
    public final List<AbstractC22263f> f62052b = new ArrayList();

    /* renamed from: c */
    public C22226e f62053c;

    /* renamed from: d */
    public Object f62054d;

    /* renamed from: e */
    public int f62055e;

    /* renamed from: f */
    public int f62056f;

    /* renamed from: g */
    public Class<?> f62057g;

    /* renamed from: h */
    public RunnableC22354i.AbstractC22358d f62058h;

    /* renamed from: i */
    public C22267i f62059i;

    /* renamed from: j */
    public Map<Class<?>, AbstractC22271m<?>> f62060j;

    /* renamed from: k */
    public Class<Transcode> f62061k;

    /* renamed from: l */
    public boolean f62062l;

    /* renamed from: m */
    public boolean f62063m;

    /* renamed from: n */
    public AbstractC22263f f62064n;

    /* renamed from: o */
    public EnumC22227f f62065o;

    /* renamed from: p */
    public AbstractC22364k f62066p;

    /* renamed from: q */
    public boolean f62067q;

    /* renamed from: r */
    public boolean f62068r;

    /* renamed from: a */
    public List<AbstractC22263f> m8302a() {
        if (!this.f62063m) {
            this.f62063m = true;
            this.f62052b.clear();
            List<AbstractC22436n.C22437a<?>> m8300c = m8300c();
            int size = m8300c.size();
            for (int i = 0; i < size; i++) {
                AbstractC22436n.C22437a<?> c22437a = m8300c.get(i);
                if (!this.f62052b.contains(c22437a.f62283a)) {
                    this.f62052b.add(c22437a.f62283a);
                }
                for (int i2 = 0; i2 < c22437a.f62284b.size(); i2++) {
                    if (!this.f62052b.contains(c22437a.f62284b.get(i2))) {
                        this.f62052b.add(c22437a.f62284b.get(i2));
                    }
                }
            }
        }
        return this.f62052b;
    }

    /* renamed from: b */
    public AbstractC22322a m8301b() {
        return ((C22369l.C22374c) this.f62058h).m8268a();
    }

    /* renamed from: c */
    public List<AbstractC22436n.C22437a<?>> m8300c() {
        if (!this.f62062l) {
            this.f62062l = true;
            this.f62051a.clear();
            List m8438f = this.f62053c.f61738b.m8438f(this.f62054d);
            int size = m8438f.size();
            for (int i = 0; i < size; i++) {
                AbstractC22436n.C22437a<?> mo8215a = ((AbstractC22436n) m8438f.get(i)).mo8215a(this.f62054d, this.f62055e, this.f62056f, this.f62059i);
                if (mo8215a != null) {
                    this.f62051a.add(mo8215a);
                }
            }
        }
        return this.f62051a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public <Data> C22391u<Data, ?, Transcode> m8299d(Class<Data> cls) {
        C22391u<?, ?, ?> orDefault;
        C22391u<?, ?, ?> c22391u;
        ArrayList arrayList;
        C22553g<?> c22553g;
        C22551f.C22552a<?, ?> next;
        C22228g c22228g = this.f62053c.f61738b;
        Class<?> cls2 = this.f62057g;
        Class cls3 = (Class<Transcode>) this.f62061k;
        C22579c c22579c = c22228g.f61760i;
        C22622i andSet = c22579c.f62514b.getAndSet(null);
        C22622i c22622i = andSet;
        if (andSet == null) {
            c22622i = new C22622i();
        }
        c22622i.f62645a = cls;
        c22622i.f62646b = cls2;
        c22622i.f62647c = cls3;
        synchronized (c22579c.f62513a) {
            orDefault = c22579c.f62513a.getOrDefault(c22622i, null);
        }
        c22579c.f62514b.set(c22622i);
        Objects.requireNonNull(c22228g.f61760i);
        if (C22579c.f62512c.equals(orDefault)) {
            c22391u = null;
        } else if (orDefault == null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = ((ArrayList) c22228g.f61754c.m8116b(cls, cls2)).iterator();
            while (it.hasNext()) {
                Class<?> cls4 = (Class) it.next();
                Iterator it2 = ((ArrayList) c22228g.f61757f.m8145a(cls4, cls3)).iterator();
                while (it2.hasNext()) {
                    Class<?> cls5 = (Class) it2.next();
                    C22581e c22581e = c22228g.f61754c;
                    synchronized (c22581e) {
                        arrayList = new ArrayList();
                        for (String str : c22581e.f62517a) {
                            List<C22581e.C22582a<?, ?>> list = c22581e.f62518b.get(str);
                            if (list != null) {
                                for (C22581e.C22582a<?, ?> c22582a : list) {
                                    if (c22582a.m8115a(cls, cls4)) {
                                        arrayList.add(c22582a.f62521c);
                                    }
                                }
                            }
                        }
                    }
                    C22551f c22551f = c22228g.f61757f;
                    synchronized (c22551f) {
                        if (cls5.isAssignableFrom(cls4)) {
                            c22553g = C22553g.f62482a;
                        } else {
                            Iterator<C22551f.C22552a<?, ?>> it3 = c22551f.f62478a.iterator();
                            do {
                                if (!it3.hasNext()) {
                                    throw new IllegalArgumentException("No transcoder registered to transcode from " + cls4 + " to " + cls5);
                                }
                                next = it3.next();
                            } while (!next.m8144a(cls4, cls5));
                            c22553g = next.f62481c;
                        }
                    }
                    arrayList2.add(new C22362j(cls, cls4, cls5, arrayList, c22553g, c22228g.f61761j));
                }
            }
            c22391u = arrayList2.isEmpty() ? null : new C22391u<>(cls, cls2, cls3, arrayList2, c22228g.f61761j);
            C22579c c22579c2 = c22228g.f61760i;
            synchronized (c22579c2.f62513a) {
                c22579c2.f62513a.put(new C22622i(cls, cls2, cls3), c22391u != null ? c22391u : C22579c.f62512c);
            }
        } else {
            c22391u = orDefault;
        }
        return (C22391u<Data, ?, Transcode>) c22391u;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003f, code lost:
        r8 = r0.f62510b;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <X> p193e.p1451f.p1452a.p1457n.AbstractC22261d<X> m8298e(X r5) throws p193e.p1451f.p1452a.C22228g.C22233e {
        /*
            r4 = this;
            r0 = r4
            e.f.a.e r0 = r0.f62053c
            e.f.a.g r0 = r0.f61738b
            e.f.a.q.a r0 = r0.f61753b
            r6 = r0
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            r7 = r0
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            java.util.List<e.f.a.q.a$a<?>> r0 = r0.f62508a     // Catch: java.lang.Throwable -> L64
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L64
            r8 = r0
        L1d:
            r0 = r8
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> L64
            if (r0 == 0) goto L4b
            r0 = r8
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L64
            e.f.a.q.a$a r0 = (p193e.p1451f.p1452a.p1475q.C22576a.C22577a) r0     // Catch: java.lang.Throwable -> L64
            r9 = r0
            r0 = r9
            java.lang.Class<T> r0 = r0.f62509a     // Catch: java.lang.Throwable -> L64
            r1 = r7
            boolean r0 = r0.isAssignableFrom(r1)     // Catch: java.lang.Throwable -> L64
            if (r0 == 0) goto L1d
            r0 = r9
            e.f.a.n.d<T> r0 = r0.f62510b     // Catch: java.lang.Throwable -> L64
            r8 = r0
            r0 = r6
            monitor-exit(r0)
            goto L50
        L4b:
            r0 = 0
            r8 = r0
            r0 = r6
            monitor-exit(r0)
        L50:
            r0 = r8
            if (r0 == 0) goto L58
            r0 = r8
            return r0
        L58:
            e.f.a.g$e r0 = new e.f.a.g$e
            r1 = r0
            r2 = r5
            java.lang.Class r2 = r2.getClass()
            r1.<init>(r2)
            throw r0
        L64:
            r5 = move-exception
            r0 = r6
            monitor-exit(r0)
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1457n.p1460o.C22353h.m8298e(java.lang.Object):e.f.a.n.d");
    }

    /* renamed from: f */
    public <Z> AbstractC22271m<Z> m8297f(Class<Z> cls) {
        AbstractC22271m<?> abstractC22271m = this.f62060j.get(cls);
        AbstractC22271m<?> abstractC22271m2 = abstractC22271m;
        if (abstractC22271m == null) {
            Iterator<Map.Entry<Class<?>, AbstractC22271m<?>>> it = this.f62060j.entrySet().iterator();
            while (true) {
                abstractC22271m2 = abstractC22271m;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, AbstractC22271m<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    abstractC22271m2 = next.getValue();
                    break;
                }
            }
        }
        if (abstractC22271m2 == null) {
            if (!this.f62060j.isEmpty() || !this.f62067q) {
                return c.b;
            }
            throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
        }
        return (AbstractC22271m<Z>) abstractC22271m2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public boolean m8296g(Class<?> cls) {
        return m8299d(cls) != null;
    }
}
