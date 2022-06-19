package p193e.p1451f.p1452a.p1457n.p1460o;

import java.io.File;
import java.util.List;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
/* renamed from: e.f.a.n.o.d */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/d.class */
public class C22343d implements AbstractC22351g, AbstractC22274d.AbstractC22275a<Object> {

    /* renamed from: a */
    public final List<AbstractC22263f> f62027a;

    /* renamed from: b */
    public final C22353h<?> f62028b;

    /* renamed from: c */
    public final AbstractC22351g.AbstractC22352a f62029c;

    /* renamed from: d */
    public int f62030d = -1;

    /* renamed from: e */
    public AbstractC22263f f62031e;

    /* renamed from: f */
    public List<AbstractC22436n<File, ?>> f62032f;

    /* renamed from: g */
    public int f62033g;

    /* renamed from: h */
    public volatile AbstractC22436n.C22437a<?> f62034h;

    /* renamed from: i */
    public File f62035i;

    public C22343d(C22353h<?> c22353h, AbstractC22351g.AbstractC22352a abstractC22352a) {
        List<AbstractC22263f> m8302a = c22353h.m8302a();
        this.f62027a = m8302a;
        this.f62028b = c22353h;
        this.f62029c = abstractC22352a;
    }

    public C22343d(List<AbstractC22263f> list, C22353h<?> c22353h, AbstractC22351g.AbstractC22352a abstractC22352a) {
        this.f62027a = list;
        this.f62028b = c22353h;
        this.f62029c = abstractC22352a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g
    /* renamed from: a */
    public boolean mo8247a() {
        while (true) {
            List<AbstractC22436n<File, ?>> list = this.f62032f;
            if (list != null) {
                if (this.f62033g < list.size()) {
                    this.f62034h = null;
                    boolean z = false;
                    while (!z) {
                        if (!(this.f62033g < this.f62032f.size())) {
                            break;
                        }
                        List<AbstractC22436n<File, ?>> list2 = this.f62032f;
                        int i = this.f62033g;
                        this.f62033g = i + 1;
                        AbstractC22436n<File, ?> abstractC22436n = list2.get(i);
                        File file = this.f62035i;
                        C22353h<?> c22353h = this.f62028b;
                        this.f62034h = abstractC22436n.mo8215a(file, c22353h.f62055e, c22353h.f62056f, c22353h.f62059i);
                        if (this.f62034h != null && this.f62028b.m8296g(this.f62034h.f62285c.mo8220a())) {
                            this.f62034h.f62285c.mo8217d(this.f62028b.f62065o, this);
                            z = true;
                        }
                    }
                    return z;
                }
            }
            int i2 = this.f62030d + 1;
            this.f62030d = i2;
            if (i2 >= this.f62027a.size()) {
                return false;
            }
            AbstractC22263f abstractC22263f = this.f62027a.get(this.f62030d);
            C22353h<?> c22353h2 = this.f62028b;
            File mo8309b = c22353h2.m8301b().mo8309b(new C22349e(abstractC22263f, c22353h2.f62064n));
            this.f62035i = mo8309b;
            if (mo8309b != null) {
                this.f62031e = abstractC22263f;
                this.f62032f = this.f62028b.f62053c.f61738b.m8438f(mo8309b);
                this.f62033g = 0;
            }
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g
    public void cancel() {
        AbstractC22436n.C22437a<?> c22437a = this.f62034h;
        if (c22437a != null) {
            c22437a.f62285c.cancel();
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d.AbstractC22275a
    /* renamed from: e */
    public void mo8231e(Object obj) {
        this.f62029c.mo8290h(this.f62031e, obj, this.f62034h.f62285c, EnumC22258a.DATA_DISK_CACHE, this.f62031e);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d.AbstractC22275a
    /* renamed from: f */
    public void mo8230f(Exception exc) {
        this.f62029c.mo8294c(this.f62031e, exc, this.f62034h.f62285c, EnumC22258a.DATA_DISK_CACHE);
    }
}
