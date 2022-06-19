package p193e.p1577m.p1578a.p1596c;

import android.util.Pair;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1620l1.p1621a0.C24512a;
/* renamed from: e.m.a.c.l0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/l0.class */
public final class C24510l0 {

    /* renamed from: c */
    public long f68437c;

    /* renamed from: e */
    public int f68439e;

    /* renamed from: f */
    public boolean f68440f;

    /* renamed from: g */
    public C24477j0 f68441g;

    /* renamed from: h */
    public C24477j0 f68442h;

    /* renamed from: i */
    public C24477j0 f68443i;

    /* renamed from: j */
    public int f68444j;

    /* renamed from: k */
    public Object f68445k;

    /* renamed from: l */
    public long f68446l;

    /* renamed from: a */
    public final AbstractC24861y0.C24863b f68435a = new AbstractC24861y0.C24863b();

    /* renamed from: b */
    public final AbstractC24861y0.C24864c f68436b = new AbstractC24861y0.C24864c();

    /* renamed from: d */
    public AbstractC24861y0 f68438d = AbstractC24861y0.f69725a;

    /* renamed from: a */
    public C24477j0 m4995a() {
        C24477j0 c24477j0 = this.f68441g;
        if (c24477j0 == null) {
            return null;
        }
        if (c24477j0 == this.f68442h) {
            this.f68442h = c24477j0.f68339k;
        }
        c24477j0.m5037g();
        int i = this.f68444j - 1;
        this.f68444j = i;
        if (i == 0) {
            this.f68443i = null;
            C24477j0 c24477j02 = this.f68441g;
            this.f68445k = c24477j02.f68330b;
            this.f68446l = c24477j02.f68334f.f68415a.f68510d;
        }
        C24477j0 c24477j03 = this.f68441g.f68339k;
        this.f68441g = c24477j03;
        return c24477j03;
    }

    /* renamed from: b */
    public void m4994b(boolean z) {
        C24477j0 c24477j0 = this.f68441g;
        if (c24477j0 != null) {
            this.f68445k = z ? c24477j0.f68330b : null;
            this.f68446l = c24477j0.f68334f.f68415a.f68510d;
            m4986j(c24477j0);
            c24477j0.m5037g();
        } else if (!z) {
            this.f68445k = null;
        }
        this.f68441g = null;
        this.f68443i = null;
        this.f68442h = null;
        this.f68444j = 0;
    }

    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* renamed from: c */
    public final C24502k0 m4993c(C24477j0 c24477j0, long j) {
        char c;
        Object obj;
        char c2;
        C24502k0 c24502k0 = c24477j0.f68334f;
        long j2 = (c24477j0.f68342n + c24502k0.f68419e) - j;
        boolean z = false;
        if (c24502k0.f68420f) {
            int m4369d = this.f68438d.m4369d(this.f68438d.mo4361b(c24502k0.f68415a.f68507a), this.f68435a, this.f68436b, this.f68439e, this.f68440f);
            if (m4369d == -1) {
                return null;
            }
            int i = this.f68438d.mo4360g(m4369d, this.f68435a, true).f69727b;
            Object obj2 = this.f68435a.f69726a;
            char c3 = c24502k0.f68415a.f68510d;
            if (this.f68438d.m4363m(i, this.f68436b).f69738g == m4369d) {
                Pair<Object, Long> m4364k = this.f68438d.m4364k(this.f68436b, this.f68435a, i, -9223372036854775807L, Math.max(0L, j2));
                if (m4364k == null) {
                    return null;
                }
                Object obj3 = m4364k.first;
                c = ((Long) m4364k.second).longValue();
                C24477j0 c24477j02 = c24477j0.f68339k;
                if (c24477j02 == null || !c24477j02.f68330b.equals(obj3)) {
                    char c4 = this.f68437c;
                    this.f68437c = 1 + c4;
                    c2 = c4;
                } else {
                    c2 = c24477j02.f68334f.f68415a.f68510d;
                }
                obj = obj3;
                c3 = c2;
                z = true;
            } else {
                obj = obj2;
                c = 0;
            }
            return m4992d(m4984l(obj, c, c3), z ? 1L : 0L, c);
        }
        AbstractC24531p.C24532a c24532a = c24502k0.f68415a;
        this.f68438d.m4366h(c24532a.f68507a, this.f68435a);
        if (!c24532a.m4974a()) {
            int m4353c = this.f68435a.m4353c(c24502k0.f68418d);
            if (m4353c == -1) {
                return m4990f(c24532a.f68507a, c24502k0.f68419e, c24532a.f68510d);
            }
            int m4351e = this.f68435a.m4351e(m4353c);
            return !this.f68435a.m4350f(m4353c, m4351e) ? null : m4991e(c24532a.f68507a, m4353c, m4351e, c24502k0.f68419e, c24532a.f68510d);
        }
        int i2 = c24532a.f68508b;
        C24512a.C24513a[] c24513aArr = this.f68435a.f69730e.f68454c;
        int i3 = c24513aArr[i2].f68456a;
        if (i3 == -1) {
            return null;
        }
        int m4982a = c24513aArr[i2].m4982a(c24532a.f68509c);
        if (m4982a < i3) {
            return !this.f68435a.m4350f(i2, m4982a) ? null : m4991e(c24532a.f68507a, i2, m4982a, c24502k0.f68417c, c24532a.f68510d);
        }
        char c5 = c24502k0.f68417c;
        int i4 = (c5 > (-9223372036854775807L) ? 1 : (c5 == (-9223372036854775807L) ? 0 : -1));
        char c6 = c5;
        if (i4 == 0) {
            AbstractC24861y0 abstractC24861y0 = this.f68438d;
            AbstractC24861y0.C24864c c24864c = this.f68436b;
            AbstractC24861y0.C24863b c24863b = this.f68435a;
            Pair<Object, Long> m4364k2 = abstractC24861y0.m4364k(c24864c, c24863b, c24863b.f69727b, -9223372036854775807L, Math.max(0L, j2));
            if (m4364k2 == null) {
                return null;
            }
            c6 = ((Long) m4364k2.second).longValue();
        }
        return m4990f(c24532a.f68507a, c6, c24532a.f68510d);
    }

    /* renamed from: d */
    public final C24502k0 m4992d(AbstractC24531p.C24532a c24532a, long j, long j2) {
        this.f68438d.m4366h(c24532a.f68507a, this.f68435a);
        if (c24532a.m4974a()) {
            if (this.f68435a.m4350f(c24532a.f68508b, c24532a.f68509c)) {
                return m4991e(c24532a.f68507a, c24532a.f68508b, c24532a.f68509c, j, c24532a.f68510d);
            }
            return null;
        }
        return m4990f(c24532a.f68507a, j2, c24532a.f68510d);
    }

    /* renamed from: e */
    public final C24502k0 m4991e(Object obj, int i, int i2, long j, long j2) {
        AbstractC24531p.C24532a c24532a = new AbstractC24531p.C24532a(obj, i, i2, j2);
        AbstractC24861y0 abstractC24861y0 = this.f68438d;
        long m4355a = abstractC24861y0.mo4360g(abstractC24861y0.mo4361b(obj), this.f68435a, true).m4355a(c24532a.f68508b, c24532a.f68509c);
        if (i2 == this.f68435a.f69730e.f68454c[i].m4982a(-1)) {
            Objects.requireNonNull(this.f68435a.f69730e);
        }
        return new C24502k0(c24532a, 0L, j, -9223372036854775807L, m4355a, false, false);
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: f */
    public final C24502k0 m4990f(Object obj, long j, long j2) {
        int m4354b = this.f68435a.m4354b(j);
        AbstractC24531p.C24532a c24532a = new AbstractC24531p.C24532a(obj, j2, m4354b);
        boolean z = !c24532a.m4974a() && c24532a.f68511e == -1;
        boolean m4988h = m4988h(c24532a, z);
        char m4352d = m4354b != -1 ? this.f68435a.m4352d(m4354b) : (char) 1;
        return new C24502k0(c24532a, j, -9223372036854775807L, m4352d, (m4352d == -9223372036854775807L || m4352d == Long.MIN_VALUE) ? this.f68435a.f69728c : m4352d, z, m4988h);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x006a, code lost:
        if (r0 == Long.MIN_VALUE) goto L15;
     */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1577m.p1578a.p1596c.C24502k0 m4989g(p193e.p1577m.p1578a.p1596c.C24502k0 r15) {
        /*
            r14 = this;
            r0 = r15
            e.m.a.c.l1.p$a r0 = r0.f68415a
            r16 = r0
            r0 = r16
            boolean r0 = r0.m4974a()
            if (r0 != 0) goto L19
            r0 = r16
            int r0 = r0.f68511e
            r1 = -1
            if (r0 != r1) goto L19
            r0 = 1
            r17 = r0
            goto L1b
        L19:
            r0 = 0
            r17 = r0
        L1b:
            r0 = r14
            r1 = r16
            r2 = r17
            boolean r0 = r0.m4988h(r1, r2)
            r18 = r0
            r0 = r14
            e.m.a.c.y0 r0 = r0.f68438d
            r1 = r15
            e.m.a.c.l1.p$a r1 = r1.f68415a
            java.lang.Object r1 = r1.f68507a
            r2 = r14
            e.m.a.c.y0$b r2 = r2.f68435a
            e.m.a.c.y0$b r0 = r0.m4366h(r1, r2)
            r0 = r16
            boolean r0 = r0.m4974a()
            if (r0 == 0) goto L51
            r0 = r14
            e.m.a.c.y0$b r0 = r0.f68435a
            r1 = r16
            int r1 = r1.f68508b
            r2 = r16
            int r2 = r2.f68509c
            long r0 = r0.m4355a(r1, r2)
            r19 = r0
        L4e:
            goto L79
        L51:
            r0 = r15
            long r0 = r0.f68418d
            r21 = r0
            r0 = r21
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6d
            r0 = r21
            r19 = r0
            r0 = r21
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L4e
        L6d:
            r0 = r14
            e.m.a.c.y0$b r0 = r0.f68435a
            long r0 = r0.f69728c
            r19 = r0
            goto L4e
        L79:
            e.m.a.c.k0 r0 = new e.m.a.c.k0
            r1 = r0
            r2 = r16
            r3 = r15
            long r3 = r3.f68416b
            r4 = r15
            long r4 = r4.f68417c
            r5 = r15
            long r5 = r5.f68418d
            r6 = r19
            r7 = r17
            r8 = r18
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.C24510l0.m4989g(e.m.a.c.k0):e.m.a.c.k0");
    }

    /* renamed from: h */
    public final boolean m4988h(AbstractC24531p.C24532a c24532a, boolean z) {
        boolean z2;
        int mo4361b = this.f68438d.mo4361b(c24532a.f68507a);
        if (!this.f68438d.m4363m(this.f68438d.m4367f(mo4361b, this.f68435a).f69727b, this.f68436b).f69736e) {
            if ((this.f68438d.m4369d(mo4361b, this.f68435a, this.f68436b, this.f68439e, this.f68440f) == -1) && z) {
                z2 = true;
                return z2;
            }
        }
        z2 = false;
        return z2;
    }

    /* renamed from: i */
    public void m4987i(long j) {
        C24477j0 c24477j0 = this.f68443i;
        if (c24477j0 != null) {
            C26232y.m2286x(c24477j0.m5038f());
            if (!c24477j0.f68332d) {
                return;
            }
            c24477j0.f68329a.mo4966c(j - c24477j0.f68342n);
        }
    }

    /* renamed from: j */
    public boolean m4986j(C24477j0 c24477j0) {
        C26232y.m2286x(c24477j0 != null);
        this.f68443i = c24477j0;
        boolean z = false;
        while (true) {
            c24477j0 = c24477j0.f68339k;
            if (c24477j0 == null) {
                break;
            }
            if (c24477j0 == this.f68442h) {
                this.f68442h = this.f68441g;
                z = true;
            }
            c24477j0.m5037g();
            this.f68444j--;
        }
        C24477j0 c24477j02 = this.f68443i;
        if (c24477j02.f68339k != null) {
            c24477j02.m5042b();
            c24477j02.f68339k = null;
            c24477j02.m5041c();
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* renamed from: k */
    public AbstractC24531p.C24532a m4985k(Object obj, long j) {
        char c;
        int mo4361b;
        AbstractC24861y0 abstractC24861y0 = this.f68438d;
        int i = abstractC24861y0.mo4360g(abstractC24861y0.mo4361b(obj), this.f68435a, true).f69727b;
        Object obj2 = this.f68445k;
        if (obj2 == null || (mo4361b = this.f68438d.mo4361b(obj2)) == -1 || this.f68438d.m4367f(mo4361b, this.f68435a).f69727b != i) {
            C24477j0 c24477j0 = this.f68441g;
            while (true) {
                C24477j0 c24477j02 = c24477j0;
                if (c24477j02 == null) {
                    C24477j0 c24477j03 = this.f68441g;
                    while (true) {
                        C24477j0 c24477j04 = c24477j03;
                        if (c24477j04 != null) {
                            int mo4361b2 = this.f68438d.mo4361b(c24477j04.f68330b);
                            if (mo4361b2 != -1 && this.f68438d.m4367f(mo4361b2, this.f68435a).f69727b == i) {
                                c = c24477j04.f68334f.f68415a.f68510d;
                                break;
                            }
                            c24477j03 = c24477j04.f68339k;
                        } else {
                            ?? r0 = this.f68437c;
                            this.f68437c = 1 + r0;
                            c = r0;
                            if (this.f68441g == null) {
                                this.f68445k = obj;
                                this.f68446l = r0;
                                c = r0;
                            }
                        }
                    }
                } else if (c24477j02.f68330b.equals(obj)) {
                    c = c24477j02.f68334f.f68415a.f68510d;
                    break;
                } else {
                    c24477j0 = c24477j02.f68339k;
                }
            }
        } else {
            c = this.f68446l;
        }
        return m4984l(obj, j, c);
    }

    /* renamed from: l */
    public final AbstractC24531p.C24532a m4984l(Object obj, long j, long j2) {
        AbstractC24861y0 abstractC24861y0 = this.f68438d;
        abstractC24861y0.mo4360g(abstractC24861y0.mo4361b(obj), this.f68435a, true);
        int m4353c = this.f68435a.m4353c(j);
        return m4353c == -1 ? new AbstractC24531p.C24532a(obj, j2, this.f68435a.m4354b(j)) : new AbstractC24531p.C24532a(obj, m4353c, this.f68435a.m4351e(m4353c), j2);
    }

    /* renamed from: m */
    public final boolean m4983m() {
        C24477j0 c24477j0;
        C24477j0 c24477j02 = this.f68441g;
        if (c24477j02 == null) {
            return true;
        }
        int mo4361b = this.f68438d.mo4361b(c24477j02.f68330b);
        while (true) {
            mo4361b = this.f68438d.m4369d(mo4361b, this.f68435a, this.f68436b, this.f68439e, this.f68440f);
            while (true) {
                c24477j0 = c24477j02.f68339k;
                if (c24477j0 == null || c24477j02.f68334f.f68420f) {
                    break;
                }
                c24477j02 = c24477j0;
            }
            if (mo4361b == -1 || c24477j0 == null || this.f68438d.mo4361b(c24477j0.f68330b) != mo4361b) {
                break;
            }
            c24477j02 = c24477j0;
        }
        boolean m4986j = m4986j(c24477j02);
        c24477j02.f68334f = m4989g(c24477j02.f68334f);
        return !m4986j;
    }
}
