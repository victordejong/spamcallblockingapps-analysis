package p193e.p1545k.p1546a.p1548b.p1553x;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23380l;
import p193e.p1545k.p1546a.p1548b.C23371f;
import p193e.p1545k.p1546a.p1548b.C23379k;
/* renamed from: e.k.a.b.x.f */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/x/f.class */
public class C23411f extends AbstractC23380l {

    /* renamed from: c */
    public final C23411f f64867c;

    /* renamed from: d */
    public C23407b f64868d;

    /* renamed from: e */
    public C23411f f64869e;

    /* renamed from: f */
    public String f64870f;

    /* renamed from: g */
    public Object f64871g;

    /* renamed from: h */
    public boolean f64872h;

    public C23411f(int i, C23411f c23411f, C23407b c23407b) {
        this.f64688a = i;
        this.f64867c = c23411f;
        this.f64868d = c23407b;
        this.f64689b = -1;
    }

    public C23411f(int i, C23411f c23411f, C23407b c23407b, Object obj) {
        this.f64688a = i;
        this.f64867c = c23411f;
        this.f64868d = c23407b;
        this.f64689b = -1;
        this.f64871g = obj;
    }

    /* renamed from: n */
    public static C23411f m7064n(C23407b c23407b) {
        return new C23411f(0, null, c23407b);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23380l
    /* renamed from: a */
    public final String mo5786a() {
        return this.f64870f;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23380l
    /* renamed from: b */
    public Object mo5785b() {
        return this.f64871g;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23380l
    /* renamed from: c */
    public AbstractC23380l mo5784c() {
        return this.f64867c;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23380l
    /* renamed from: g */
    public void mo5783g(Object obj) {
        this.f64871g = obj;
    }

    /* renamed from: i */
    public C23411f m7069i() {
        this.f64871g = null;
        return this.f64867c;
    }

    /* renamed from: j */
    public C23411f m7068j() {
        C23411f c23411f = this.f64869e;
        if (c23411f != null) {
            c23411f.m7063o(1);
            return c23411f;
        }
        C23407b c23407b = this.f64868d;
        C23411f c23411f2 = new C23411f(1, this, c23407b == null ? null : c23407b.m7084a());
        this.f64869e = c23411f2;
        return c23411f2;
    }

    /* renamed from: k */
    public C23411f m7067k(Object obj) {
        C23411f c23411f = this.f64869e;
        if (c23411f != null) {
            c23411f.m7062p(1, obj);
            return c23411f;
        }
        C23407b c23407b = this.f64868d;
        C23411f c23411f2 = new C23411f(1, this, c23407b == null ? null : c23407b.m7084a(), obj);
        this.f64869e = c23411f2;
        return c23411f2;
    }

    /* renamed from: l */
    public C23411f m7066l() {
        C23411f c23411f = this.f64869e;
        if (c23411f != null) {
            c23411f.m7063o(2);
            return c23411f;
        }
        C23407b c23407b = this.f64868d;
        C23411f c23411f2 = new C23411f(2, this, c23407b == null ? null : c23407b.m7084a());
        this.f64869e = c23411f2;
        return c23411f2;
    }

    /* renamed from: m */
    public C23411f m7065m(Object obj) {
        C23411f c23411f = this.f64869e;
        if (c23411f != null) {
            c23411f.m7062p(2, obj);
            return c23411f;
        }
        C23407b c23407b = this.f64868d;
        C23411f c23411f2 = new C23411f(2, this, c23407b == null ? null : c23407b.m7084a(), obj);
        this.f64869e = c23411f2;
        return c23411f2;
    }

    /* renamed from: o */
    public C23411f m7063o(int i) {
        this.f64688a = i;
        this.f64689b = -1;
        this.f64870f = null;
        this.f64872h = false;
        this.f64871g = null;
        C23407b c23407b = this.f64868d;
        if (c23407b != null) {
            c23407b.m7082c();
        }
        return this;
    }

    /* renamed from: p */
    public C23411f m7062p(int i, Object obj) {
        this.f64688a = i;
        this.f64689b = -1;
        this.f64870f = null;
        this.f64872h = false;
        this.f64871g = obj;
        C23407b c23407b = this.f64868d;
        if (c23407b != null) {
            c23407b.m7082c();
        }
        return this;
    }

    /* renamed from: q */
    public int m7061q(String str) throws C23379k {
        if (this.f64688a != 2 || this.f64872h) {
            return 4;
        }
        int i = 1;
        this.f64872h = true;
        this.f64870f = str;
        C23407b c23407b = this.f64868d;
        if (c23407b != null && c23407b.m7083b(str)) {
            Object obj = c23407b.f64835a;
            throw new C23371f(C22128a.m8725C2("Duplicate field '", str, "'"), obj instanceof AbstractC23372g ? (AbstractC23372g) obj : null);
        }
        if (this.f64689b < 0) {
            i = 0;
        }
        return i;
    }

    /* renamed from: r */
    public int m7060r() {
        int i = this.f64688a;
        int i2 = 0;
        if (i == 2) {
            if (!this.f64872h) {
                return 5;
            }
            this.f64872h = false;
            this.f64689b++;
            return 2;
        } else if (i != 1) {
            int i3 = this.f64689b + 1;
            this.f64689b = i3;
            return i3 == 0 ? 0 : 3;
        } else {
            int i4 = this.f64689b;
            this.f64689b = i4 + 1;
            if (i4 >= 0) {
                i2 = 1;
            }
            return i2;
        }
    }
}
