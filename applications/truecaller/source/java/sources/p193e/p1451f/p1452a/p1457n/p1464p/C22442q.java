package p193e.p1451f.p1452a.p1457n.p1464p;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
/* renamed from: e.f.a.n.p.q */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/q.class */
public class C22442q<Model, Data> implements AbstractC22436n<Model, Data> {

    /* renamed from: a */
    public final List<AbstractC22436n<Model, Data>> f62290a;

    /* renamed from: b */
    public final AbstractC26555e<List<Throwable>> f62291b;

    /* renamed from: e.f.a.n.p.q$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/q$a.class */
    public static class C22443a<Data> implements AbstractC22274d<Data>, AbstractC22274d.AbstractC22275a<Data> {

        /* renamed from: a */
        public final List<AbstractC22274d<Data>> f62292a;

        /* renamed from: b */
        public final AbstractC26555e<List<Throwable>> f62293b;

        /* renamed from: c */
        public int f62294c;

        /* renamed from: d */
        public EnumC22227f f62295d;

        /* renamed from: e */
        public AbstractC22274d.AbstractC22275a<? super Data> f62296e;

        /* renamed from: f */
        public List<Throwable> f62297f;

        /* renamed from: g */
        public boolean f62298g;

        public C22443a(List<AbstractC22274d<Data>> list, AbstractC26555e<List<Throwable>> abstractC26555e) {
            this.f62293b = abstractC26555e;
            if (!list.isEmpty()) {
                this.f62292a = list;
                this.f62294c = 0;
                return;
            }
            throw new IllegalArgumentException("Must not be empty.");
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: a */
        public Class<Data> mo8220a() {
            return this.f62292a.get(0).mo8220a();
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: b */
        public void mo8219b() {
            List<Throwable> list = this.f62297f;
            if (list != null) {
                this.f62293b.mo1688b(list);
            }
            this.f62297f = null;
            for (AbstractC22274d<Data> abstractC22274d : this.f62292a) {
                abstractC22274d.mo8219b();
            }
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: c */
        public EnumC22258a mo8218c() {
            return this.f62292a.get(0).mo8218c();
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        public void cancel() {
            this.f62298g = true;
            for (AbstractC22274d<Data> abstractC22274d : this.f62292a) {
                abstractC22274d.cancel();
            }
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: d */
        public void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super Data> abstractC22275a) {
            this.f62295d = enumC22227f;
            this.f62296e = abstractC22275a;
            this.f62297f = this.f62293b.mo1689a();
            this.f62292a.get(this.f62294c).mo8217d(enumC22227f, this);
            if (this.f62298g) {
                cancel();
            }
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d.AbstractC22275a
        /* renamed from: e */
        public void mo8231e(Data data) {
            if (data != null) {
                this.f62296e.mo8231e(data);
            } else {
                m8229g();
            }
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d.AbstractC22275a
        /* renamed from: f */
        public void mo8230f(Exception exc) {
            List<Throwable> list = this.f62297f;
            Objects.requireNonNull(list, "Argument must not be null");
            list.add(exc);
            m8229g();
        }

        /* renamed from: g */
        public final void m8229g() {
            if (this.f62298g) {
                return;
            }
            if (this.f62294c < this.f62292a.size() - 1) {
                this.f62294c++;
                mo8217d(this.f62295d, this.f62296e);
                return;
            }
            Objects.requireNonNull(this.f62297f, "Argument must not be null");
            this.f62296e.mo8230f(new C22387r("Fetch failed", new ArrayList(this.f62297f)));
        }
    }

    public C22442q(List<AbstractC22436n<Model, Data>> list, AbstractC26555e<List<Throwable>> abstractC26555e) {
        this.f62290a = list;
        this.f62291b = abstractC26555e;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<Data> mo8215a(Model model, int i, int i2, C22267i c22267i) {
        AbstractC22263f abstractC22263f;
        int size = this.f62290a.size();
        ArrayList arrayList = new ArrayList(size);
        int i3 = 0;
        AbstractC22263f abstractC22263f2 = null;
        while (true) {
            abstractC22263f = abstractC22263f2;
            if (i3 >= size) {
                break;
            }
            AbstractC22436n<Model, Data> abstractC22436n = this.f62290a.get(i3);
            AbstractC22263f abstractC22263f3 = abstractC22263f;
            if (abstractC22436n.mo8214b(model)) {
                AbstractC22436n.C22437a<Data> mo8215a = abstractC22436n.mo8215a(model, i, i2, c22267i);
                abstractC22263f3 = abstractC22263f;
                if (mo8215a != null) {
                    abstractC22263f3 = mo8215a.f62283a;
                    arrayList.add(mo8215a.f62285c);
                }
            }
            i3++;
            abstractC22263f2 = abstractC22263f3;
        }
        AbstractC22436n.C22437a<Data> c22437a = null;
        if (!arrayList.isEmpty()) {
            c22437a = null;
            if (abstractC22263f != null) {
                c22437a = new AbstractC22436n.C22437a<>(abstractC22263f, new C22443a(arrayList, this.f62291b));
            }
        }
        return c22437a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public boolean mo8214b(Model model) {
        for (AbstractC22436n<Model, Data> abstractC22436n : this.f62290a) {
            if (abstractC22436n.mo8214b(model)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MultiModelLoader{modelLoaders=");
        m8728C.append(Arrays.toString(this.f62290a.toArray()));
        m8728C.append('}');
        return m8728C.toString();
    }
}
