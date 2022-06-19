package p193e.p1577m.p1578a.p1596c;

import com.google.android.exoplayer2.source.TrackGroupArray;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24554w;
import p193e.p1577m.p1578a.p1596c.p1620l1.C24524l;
import p193e.p1577m.p1578a.p1596c.p1620l1.C24526m;
import p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f;
import p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24649h;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24650i;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24690d;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24789n;
/* renamed from: e.m.a.c.j0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/j0.class */
public final class C24477j0 {

    /* renamed from: a */
    public final AbstractC24529o f68329a;

    /* renamed from: b */
    public final Object f68330b;

    /* renamed from: c */
    public final AbstractC24554w[] f68331c;

    /* renamed from: d */
    public boolean f68332d;

    /* renamed from: e */
    public boolean f68333e;

    /* renamed from: f */
    public C24502k0 f68334f;

    /* renamed from: g */
    public final boolean[] f68335g;

    /* renamed from: h */
    public final AbstractC24852u[] f68336h;

    /* renamed from: i */
    public final AbstractC24649h f68337i;

    /* renamed from: j */
    public final AbstractC24531p f68338j;

    /* renamed from: k */
    public C24477j0 f68339k;

    /* renamed from: l */
    public TrackGroupArray f68340l = TrackGroupArray.f5002d;

    /* renamed from: m */
    public C24650i f68341m;

    /* renamed from: n */
    public long f68342n;

    public C24477j0(AbstractC24852u[] abstractC24852uArr, long j, AbstractC24649h abstractC24649h, AbstractC24690d abstractC24690d, AbstractC24531p abstractC24531p, C24502k0 c24502k0, C24650i c24650i) {
        this.f68336h = abstractC24852uArr;
        this.f68342n = j;
        this.f68337i = abstractC24649h;
        this.f68338j = abstractC24531p;
        AbstractC24531p.C24532a c24532a = c24502k0.f68415a;
        this.f68330b = c24532a.f68507a;
        this.f68334f = c24502k0;
        this.f68341m = c24650i;
        this.f68331c = new AbstractC24554w[abstractC24852uArr.length];
        this.f68335g = new boolean[abstractC24852uArr.length];
        long j2 = c24502k0.f68416b;
        long j3 = c24502k0.f68418d;
        AbstractC24529o mo4941e = abstractC24531p.mo4941e(c24532a, abstractC24690d, j2);
        C24524l c24524l = mo4941e;
        if (j3 != -9223372036854775807L) {
            c24524l = mo4941e;
            if (j3 != Long.MIN_VALUE) {
                c24524l = new C24524l(mo4941e, true, 0L, j3);
            }
        }
        this.f68329a = c24524l;
    }

    /* renamed from: a */
    public long m5043a(C24650i c24650i, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= c24650i.f69030a) {
                break;
            }
            boolean[] zArr2 = this.f68335g;
            if (z || !c24650i.m4790a(this.f68341m, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        AbstractC24554w[] abstractC24554wArr = this.f68331c;
        int i2 = 0;
        while (true) {
            AbstractC24852u[] abstractC24852uArr = this.f68336h;
            if (i2 >= abstractC24852uArr.length) {
                break;
            }
            if (abstractC24852uArr[i2].f69690a == 6) {
                abstractC24554wArr[i2] = null;
            }
            i2++;
        }
        m5042b();
        this.f68341m = c24650i;
        m5041c();
        C24648g c24648g = c24650i.f69032c;
        long mo4957l = this.f68329a.mo4957l(c24648g.m4793a(), this.f68335g, this.f68331c, zArr, j);
        AbstractC24554w[] abstractC24554wArr2 = this.f68331c;
        int i3 = 0;
        while (true) {
            AbstractC24852u[] abstractC24852uArr2 = this.f68336h;
            if (i3 >= abstractC24852uArr2.length) {
                break;
            }
            if (abstractC24852uArr2[i3].f69690a == 6 && this.f68341m.m4789b(i3)) {
                abstractC24554wArr2[i3] = new C24526m();
            }
            i3++;
        }
        this.f68333e = false;
        int i4 = 0;
        while (true) {
            AbstractC24554w[] abstractC24554wArr3 = this.f68331c;
            if (i4 < abstractC24554wArr3.length) {
                if (abstractC24554wArr3[i4] != null) {
                    C26232y.m2286x(c24650i.m4789b(i4));
                    if (this.f68336h[i4].f69690a != 6) {
                        this.f68333e = true;
                    }
                } else {
                    C26232y.m2286x(c24648g.f69027b[i4] == null);
                }
                i4++;
            } else {
                return mo4957l;
            }
        }
    }

    /* renamed from: b */
    public final void m5042b() {
        if (!m5038f()) {
            return;
        }
        int i = 0;
        while (true) {
            C24650i c24650i = this.f68341m;
            if (i >= c24650i.f69030a) {
                return;
            }
            boolean m4789b = c24650i.m4789b(i);
            AbstractC24645f abstractC24645f = this.f68341m.f69032c.f69027b[i];
            if (m4789b && abstractC24645f != null) {
                abstractC24645f.mo4802a();
            }
            i++;
        }
    }

    /* renamed from: c */
    public final void m5041c() {
        if (!m5038f()) {
            return;
        }
        int i = 0;
        while (true) {
            C24650i c24650i = this.f68341m;
            if (i >= c24650i.f69030a) {
                return;
            }
            boolean m4789b = c24650i.m4789b(i);
            AbstractC24645f abstractC24645f = this.f68341m.f69032c.f69027b[i];
            if (m4789b && abstractC24645f != null) {
                abstractC24645f.mo4801b();
            }
            i++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: d */
    public long m5040d() {
        if (!this.f68332d) {
            return this.f68334f.f68416b;
        }
        char mo4967b = this.f68333e ? this.f68329a.mo4967b() : (char) 0;
        char c = mo4967b;
        if (mo4967b == Long.MIN_VALUE) {
            c = this.f68334f.f68419e;
        }
        return c;
    }

    /* renamed from: e */
    public boolean m5039e() {
        return this.f68332d && (!this.f68333e || this.f68329a.mo4967b() == Long.MIN_VALUE);
    }

    /* renamed from: f */
    public final boolean m5038f() {
        return this.f68339k == null;
    }

    /* renamed from: g */
    public void m5037g() {
        m5042b();
        long j = this.f68334f.f68418d;
        AbstractC24531p abstractC24531p = this.f68338j;
        AbstractC24529o abstractC24529o = this.f68329a;
        try {
            if (j == -9223372036854775807L || j == Long.MIN_VALUE) {
                abstractC24531p.mo4940g(abstractC24529o);
            } else {
                abstractC24531p.mo4940g(((C24524l) abstractC24529o).f68493a);
            }
        } catch (RuntimeException e) {
            C24789n.m4576a("Period release failed.", e);
        }
    }

    /* renamed from: h */
    public C24650i m5036h(float f, AbstractC24861y0 abstractC24861y0) throws C24189b0 {
        AbstractC24645f[] m4793a;
        C24650i mo4791b = this.f68337i.mo4791b(this.f68336h, this.f68340l, this.f68334f.f68415a, abstractC24861y0);
        for (AbstractC24645f abstractC24645f : mo4791b.f69032c.m4793a()) {
            if (abstractC24645f != null) {
                abstractC24645f.mo4794i(f);
            }
        }
        return mo4791b;
    }
}
