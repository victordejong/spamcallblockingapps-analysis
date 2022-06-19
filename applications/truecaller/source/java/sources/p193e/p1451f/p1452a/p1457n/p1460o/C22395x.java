package p193e.p1451f.p1452a.p1457n.p1460o;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22228g;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.AbstractC22271m;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1464p.C22439p;
import p193e.p1451f.p1452a.p1475q.C22580d;
import p193e.p1451f.p1452a.p1480t.C22622i;
/* renamed from: e.f.a.n.o.x */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/x.class */
public class C22395x implements AbstractC22351g, AbstractC22274d.AbstractC22275a<Object> {

    /* renamed from: a */
    public final AbstractC22351g.AbstractC22352a f62220a;

    /* renamed from: b */
    public final C22353h<?> f62221b;

    /* renamed from: c */
    public int f62222c;

    /* renamed from: d */
    public int f62223d = -1;

    /* renamed from: e */
    public AbstractC22263f f62224e;

    /* renamed from: f */
    public List<AbstractC22436n<File, ?>> f62225f;

    /* renamed from: g */
    public int f62226g;

    /* renamed from: h */
    public volatile AbstractC22436n.C22437a<?> f62227h;

    /* renamed from: i */
    public File f62228i;

    /* renamed from: j */
    public C22396y f62229j;

    public C22395x(C22353h<?> c22353h, AbstractC22351g.AbstractC22352a abstractC22352a) {
        this.f62221b = c22353h;
        this.f62220a = abstractC22352a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g
    /* renamed from: a */
    public boolean mo8247a() {
        List<Class<?>> orDefault;
        List<Class<?>> m8224e;
        List<AbstractC22263f> m8302a = this.f62221b.m8302a();
        if (m8302a.isEmpty()) {
            return false;
        }
        C22353h<?> c22353h = this.f62221b;
        C22228g c22228g = c22353h.f62053c.f61738b;
        Class<?> cls = c22353h.f62054d.getClass();
        Class<?> cls2 = c22353h.f62057g;
        Class<?> cls3 = c22353h.f62061k;
        C22580d c22580d = c22228g.f61759h;
        C22622i andSet = c22580d.f62515a.getAndSet(null);
        if (andSet == null) {
            andSet = new C22622i(cls, cls2, cls3);
        } else {
            andSet.f62645a = cls;
            andSet.f62646b = cls2;
            andSet.f62647c = cls3;
        }
        synchronized (c22580d.f62516b) {
            orDefault = c22580d.f62516b.getOrDefault(andSet, null);
        }
        c22580d.f62515a.set(andSet);
        ArrayList arrayList = orDefault;
        if (orDefault == null) {
            ArrayList arrayList2 = new ArrayList();
            C22439p c22439p = c22228g.f61752a;
            synchronized (c22439p) {
                m8224e = c22439p.f62286a.m8224e(cls);
            }
            Iterator it = ((ArrayList) m8224e).iterator();
            while (it.hasNext()) {
                Iterator it2 = ((ArrayList) c22228g.f61754c.m8116b((Class) it.next(), cls2)).iterator();
                while (it2.hasNext()) {
                    Class cls4 = (Class) it2.next();
                    if (!((ArrayList) c22228g.f61757f.m8145a(cls4, cls3)).isEmpty() && !arrayList2.contains(cls4)) {
                        arrayList2.add(cls4);
                    }
                }
            }
            C22580d c22580d2 = c22228g.f61759h;
            List<Class<?>> unmodifiableList = Collections.unmodifiableList(arrayList2);
            synchronized (c22580d2.f62516b) {
                c22580d2.f62516b.put(new C22622i(cls, cls2, cls3), unmodifiableList);
            }
            arrayList = arrayList2;
        }
        if (arrayList.isEmpty()) {
            if (File.class.equals(this.f62221b.f62061k)) {
                return false;
            }
            StringBuilder m8728C = C22128a.m8728C("Failed to find any load path from ");
            m8728C.append(this.f62221b.f62054d.getClass());
            m8728C.append(" to ");
            m8728C.append(this.f62221b.f62061k);
            throw new IllegalStateException(m8728C.toString());
        }
        while (true) {
            List<AbstractC22436n<File, ?>> list = this.f62225f;
            if (list != null) {
                if (this.f62226g < list.size()) {
                    this.f62227h = null;
                    boolean z = false;
                    while (!z) {
                        if (!(this.f62226g < this.f62225f.size())) {
                            break;
                        }
                        List<AbstractC22436n<File, ?>> list2 = this.f62225f;
                        int i = this.f62226g;
                        this.f62226g = i + 1;
                        AbstractC22436n<File, ?> abstractC22436n = list2.get(i);
                        File file = this.f62228i;
                        C22353h<?> c22353h2 = this.f62221b;
                        this.f62227h = abstractC22436n.mo8215a(file, c22353h2.f62055e, c22353h2.f62056f, c22353h2.f62059i);
                        if (this.f62227h != null && this.f62221b.m8296g(this.f62227h.f62285c.mo8220a())) {
                            this.f62227h.f62285c.mo8217d(this.f62221b.f62065o, this);
                            z = true;
                        }
                    }
                    return z;
                }
            }
            int i2 = this.f62223d + 1;
            this.f62223d = i2;
            if (i2 >= arrayList.size()) {
                int i3 = this.f62222c + 1;
                this.f62222c = i3;
                if (i3 >= m8302a.size()) {
                    return false;
                }
                this.f62223d = 0;
            }
            AbstractC22263f abstractC22263f = m8302a.get(this.f62222c);
            Class<?> cls5 = arrayList.get(this.f62223d);
            AbstractC22271m<Z> m8297f = this.f62221b.m8297f(cls5);
            C22353h<?> c22353h3 = this.f62221b;
            this.f62229j = new C22396y(c22353h3.f62053c.f61737a, abstractC22263f, c22353h3.f62064n, c22353h3.f62055e, c22353h3.f62056f, m8297f, cls5, c22353h3.f62059i);
            File mo8309b = c22353h3.m8301b().mo8309b(this.f62229j);
            this.f62228i = mo8309b;
            if (mo8309b != null) {
                this.f62224e = abstractC22263f;
                this.f62225f = this.f62221b.f62053c.f61738b.m8438f(mo8309b);
                this.f62226g = 0;
            }
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g
    public void cancel() {
        AbstractC22436n.C22437a<?> c22437a = this.f62227h;
        if (c22437a != null) {
            c22437a.f62285c.cancel();
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d.AbstractC22275a
    /* renamed from: e */
    public void mo8231e(Object obj) {
        this.f62220a.mo8290h(this.f62224e, obj, this.f62227h.f62285c, EnumC22258a.RESOURCE_DISK_CACHE, this.f62229j);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d.AbstractC22275a
    /* renamed from: f */
    public void mo8230f(Exception exc) {
        this.f62220a.mo8294c(this.f62229j, exc, this.f62227h.f62285c, EnumC22258a.RESOURCE_DISK_CACHE);
    }
}
