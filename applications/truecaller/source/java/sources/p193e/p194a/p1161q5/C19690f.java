package p193e.p194a.p1161q5;

import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1161q5.AbstractC19684c;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p613c0.AbstractC10908f;
import p193e.p194a.p613c0.C10912h;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.a.g;
import s1.i;
import s1.z.c.b;
import s1.z.c.l;
import s1.z.c.o;
/* renamed from: e.a.q5.f */
/* loaded from: classes15-dex2jar.jar:e/a/q5/f.class */
public final class C19690f implements AbstractC19688d {

    /* renamed from: a */
    public final g f54692a;

    /* renamed from: b */
    public final C20592g f54693b;

    /* renamed from: c */
    public final AbstractC17197v0 f54694c;

    /* renamed from: d */
    public final AbstractC19230g f54695d;

    /* renamed from: e */
    public final AbstractC19219a0 f54696e;

    /* renamed from: f */
    public final AbstractC19693i f54697f;

    /* renamed from: g */
    public final C10912h f54698g;

    @Inject
    public C19690f(C20592g c20592g, AbstractC17197v0 abstractC17197v0, AbstractC19230g abstractC19230g, AbstractC19219a0 abstractC19219a0, AbstractC19693i abstractC19693i, C10912h c10912h) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19693i, "settings");
        l.e(c10912h, "experimentRegistry");
        this.f54693b = c20592g;
        this.f54694c = abstractC17197v0;
        this.f54695d = abstractC19230g;
        this.f54696e = abstractC19219a0;
        this.f54697f = abstractC19693i;
        this.f54698g = c10912h;
        this.f54692a = new o(abstractC19693i) { // from class: e.a.q5.e
            public Object get() {
                return Integer.valueOf(((AbstractC19693i) ((b) this).b).mo12977m());
            }

            public void set(Object obj) {
                ((AbstractC19693i) ((b) this).b).mo12976q(((Number) obj).intValue());
            }
        };
    }

    /* renamed from: a */
    public final boolean m12996a() {
        C20592g c20592g = this.f54693b;
        return c20592g.f58068z.m10941a(c20592g, C20592g.f57695p6[22]).isEnabled();
    }

    @Override // p193e.p194a.p1161q5.AbstractC19688d
    /* renamed from: m */
    public int mo12995m() {
        return ((Number) this.f54692a.get()).intValue();
    }

    @Override // p193e.p194a.p1161q5.AbstractC19688d
    /* renamed from: q */
    public void mo12994q(int i) {
        this.f54692a.set(Integer.valueOf(i));
    }

    @Override // p193e.p194a.p1161q5.AbstractC19688d
    /* renamed from: r */
    public boolean mo12993r() {
        return m12996a() && this.f54698g.f32401c.m25512g();
    }

    @Override // p193e.p194a.p1161q5.AbstractC19688d
    /* renamed from: s */
    public void mo12992s(boolean z) {
        C15571h.m18626y("enhancedNotificationsEnabled", z);
    }

    @Override // p193e.p194a.p1161q5.AbstractC19688d
    /* renamed from: t */
    public void mo12991t() {
        if (m12996a()) {
            AbstractC10908f.m25508d(this.f54698g.f32401c, false, null, 3, null);
        }
    }

    @Override // p193e.p194a.p1161q5.AbstractC19688d
    /* renamed from: u */
    public AbstractC19684c mo12990u() {
        AbstractC19684c abstractC19684c;
        AbstractC19684c abstractC19684c2 = AbstractC19684c.C19686b.f54690a;
        if (!this.f54696e.mo13831b()) {
            abstractC19684c = AbstractC19684c.C19687c.f54691a;
        } else {
            if (mo12989v()) {
                C15571h.m18626y("enhancedNotificationsEnabled", false);
            }
            boolean m18636o = C15571h.m18636o("enhancedNotificationsEnabled");
            if (m18636o) {
                abstractC19684c = abstractC19684c2;
            } else if (m18636o) {
                throw new i();
            } else {
                abstractC19684c = AbstractC19684c.C19685a.f54689a;
            }
        }
        if (l.a(abstractC19684c, abstractC19684c2) && !this.f54697f.mo12987J1()) {
            this.f54697f.mo12986T(true);
        }
        return abstractC19684c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
        if ((p193e.p194a.p1049l4.C17422k.m16098T() || r2.f54695d.mo13788i()) == false) goto L15;
     */
    @Override // p193e.p194a.p1161q5.AbstractC19688d
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo12989v() {
        /*
            r2 = this;
            r0 = r2
            boolean r0 = r0.mo12993r()
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L3a
            r0 = r2
            e.a.l.p2.v0 r0 = r0.f54694c
            boolean r0 = r0.mo16408H()
            if (r0 != 0) goto L3a
            boolean r0 = p193e.p194a.p1049l4.C17422k.m16098T()
            if (r0 != 0) goto L31
            r0 = r2
            e.a.p5.g r0 = r0.f54695d
            boolean r0 = r0.mo13788i()
            if (r0 == 0) goto L2c
            goto L31
        L2c:
            r0 = 0
            r5 = r0
            goto L33
        L31:
            r0 = 1
            r5 = r0
        L33:
            r0 = r5
            if (r0 != 0) goto L3a
            goto L3c
        L3a:
            r0 = 0
            r4 = r0
        L3c:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1161q5.C19690f.mo12989v():boolean");
    }

    @Override // p193e.p194a.p1161q5.AbstractC19688d
    /* renamed from: w */
    public void mo12988w() {
        if (m12996a()) {
            AbstractC10908f.m25507e(this.f54698g.f32401c, false, null, 3, null);
        }
    }
}
