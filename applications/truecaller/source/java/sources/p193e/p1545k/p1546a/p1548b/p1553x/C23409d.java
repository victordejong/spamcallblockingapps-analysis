package p193e.p1545k.p1546a.p1548b.p1553x;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.AbstractC23380l;
import p193e.p1545k.p1546a.p1548b.C23375i;
import p193e.p1545k.p1546a.p1548b.C23379k;
/* renamed from: e.k.a.b.x.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/x/d.class */
public final class C23409d extends AbstractC23380l {

    /* renamed from: c */
    public final C23409d f64845c;

    /* renamed from: d */
    public C23407b f64846d;

    /* renamed from: e */
    public C23409d f64847e;

    /* renamed from: f */
    public String f64848f;

    /* renamed from: g */
    public Object f64849g;

    /* renamed from: h */
    public int f64850h;

    /* renamed from: i */
    public int f64851i;

    public C23409d(C23409d c23409d, C23407b c23407b, int i, int i2, int i3) {
        this.f64845c = c23409d;
        this.f64846d = c23407b;
        this.f64688a = i;
        this.f64850h = i2;
        this.f64851i = i3;
        this.f64689b = -1;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23380l
    /* renamed from: a */
    public String mo5786a() {
        return this.f64848f;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23380l
    /* renamed from: b */
    public Object mo5785b() {
        return this.f64849g;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23380l
    /* renamed from: c */
    public AbstractC23380l mo5784c() {
        return this.f64845c;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23380l
    /* renamed from: g */
    public void mo5783g(Object obj) {
        this.f64849g = obj;
    }

    /* renamed from: i */
    public C23409d m7077i() {
        this.f64849g = null;
        return this.f64845c;
    }

    /* renamed from: j */
    public C23409d m7076j(int i, int i2) {
        C23409d c23409d = this.f64847e;
        if (c23409d == null) {
            C23407b c23407b = this.f64846d;
            c23409d = new C23409d(this, c23407b == null ? null : c23407b.m7084a(), 1, i, i2);
            this.f64847e = c23409d;
        } else {
            c23409d.m7073m(1, i, i2);
        }
        return c23409d;
    }

    /* renamed from: k */
    public C23409d m7075k(int i, int i2) {
        C23409d c23409d = this.f64847e;
        if (c23409d != null) {
            c23409d.m7073m(2, i, i2);
            return c23409d;
        }
        C23407b c23407b = this.f64846d;
        C23409d c23409d2 = new C23409d(this, c23407b == null ? null : c23407b.m7084a(), 2, i, i2);
        this.f64847e = c23409d2;
        return c23409d2;
    }

    /* renamed from: l */
    public boolean m7074l() {
        boolean z = true;
        int i = this.f64689b + 1;
        this.f64689b = i;
        if (this.f64688a == 0 || i <= 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: m */
    public void m7073m(int i, int i2, int i3) {
        this.f64688a = i;
        this.f64689b = -1;
        this.f64850h = i2;
        this.f64851i = i3;
        this.f64848f = null;
        this.f64849g = null;
        C23407b c23407b = this.f64846d;
        if (c23407b != null) {
            c23407b.m7082c();
        }
    }

    /* renamed from: n */
    public void m7072n(String str) throws C23379k {
        this.f64848f = str;
        C23407b c23407b = this.f64846d;
        if (c23407b == null || !c23407b.m7083b(str)) {
            return;
        }
        Object obj = c23407b.f64835a;
        throw new C23375i(obj instanceof AbstractC23376j ? (AbstractC23376j) obj : null, C22128a.m8725C2("Duplicate field '", str, "'"));
    }
}
