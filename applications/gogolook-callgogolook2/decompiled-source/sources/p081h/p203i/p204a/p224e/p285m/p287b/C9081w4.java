package p081h.p203i.p204a.p224e.p285m.p287b;

import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.w4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/w4.class */
public final class C9081w4 {

    /* renamed from: a */
    public final String f20741a;

    /* renamed from: b */
    public final String f20742b;

    /* renamed from: c */
    public final long f20743c;

    /* renamed from: d */
    public final long f20744d;

    /* renamed from: e */
    public final long f20745e;

    /* renamed from: f */
    public final long f20746f;

    /* renamed from: g */
    public final Long f20747g;

    /* renamed from: h */
    public final Long f20748h;

    /* renamed from: i */
    public final Long f20749i;

    /* renamed from: j */
    public final Boolean f20750j;

    public C9081w4(String str, String str2, long j, long j2, long j3, long j4, Long l, Long l2, Long l3, Boolean bool) {
        C7021t.m21283b(str);
        C7021t.m21283b(str2);
        boolean z = true;
        C7021t.m21286a(j >= 0);
        C7021t.m21286a(j2 >= 0);
        if (j4 < 0) {
            z = false;
        }
        C7021t.m21286a(z);
        this.f20741a = str;
        this.f20742b = str2;
        this.f20743c = j;
        this.f20744d = j2;
        this.f20745e = j3;
        this.f20746f = j4;
        this.f20747g = l;
        this.f20748h = l2;
        this.f20749i = l3;
        this.f20750j = bool;
    }

    /* renamed from: a */
    public final C9081w4 m16121a() {
        return new C9081w4(this.f20741a, this.f20742b, this.f20743c + 1, 1 + this.f20744d, this.f20745e, this.f20746f, this.f20747g, this.f20748h, this.f20749i, this.f20750j);
    }

    /* renamed from: a */
    public final C9081w4 m16120a(long j) {
        return new C9081w4(this.f20741a, this.f20742b, this.f20743c, this.f20744d, j, this.f20746f, this.f20747g, this.f20748h, this.f20749i, this.f20750j);
    }

    /* renamed from: a */
    public final C9081w4 m16119a(long j, long j2) {
        return new C9081w4(this.f20741a, this.f20742b, this.f20743c, this.f20744d, this.f20745e, j, Long.valueOf(j2), this.f20748h, this.f20749i, this.f20750j);
    }

    /* renamed from: a */
    public final C9081w4 m16118a(Long l, Long l2, Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            bool = null;
        }
        return new C9081w4(this.f20741a, this.f20742b, this.f20743c, this.f20744d, this.f20745e, this.f20746f, this.f20747g, l, l2, bool);
    }
}
