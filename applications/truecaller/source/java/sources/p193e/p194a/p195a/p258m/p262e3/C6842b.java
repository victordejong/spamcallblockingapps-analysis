package p193e.p194a.p195a.p258m.p262e3;

import com.truecaller.abtest.TwoVariants;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p613c0.C10912h;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.a.m.e3.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/e3/b.class */
public final class C6842b implements AbstractC6841a {

    /* renamed from: a */
    public final AbstractC19230g f22385a;

    /* renamed from: b */
    public final C20592g f22386b;

    /* renamed from: c */
    public final C10912h f22387c;

    @Inject
    public C6842b(AbstractC19230g abstractC19230g, C20592g c20592g, C10912h c10912h) {
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(c20592g, "featuresRegistry");
        l.e(c10912h, "experimentRegistry");
        this.f22385a = abstractC19230g;
        this.f22386b = c20592g;
        this.f22387c = c10912h;
    }

    @Override // p193e.p194a.p195a.p258m.p262e3.AbstractC6841a
    /* renamed from: a */
    public AbstractC6798d1 mo30423a() {
        AbstractC6798d1.C6801b c6801b = null;
        if (this.f22385a.mo13780q() >= 30) {
            c6801b = null;
            if (this.f22385a.mo13778s()) {
                c6801b = null;
                if (!this.f22385a.mo13779r()) {
                    C20592g c20592g = this.f22386b;
                    c6801b = null;
                    if (c20592g.f57941h6.m10941a(c20592g, C20592g.f57695p6[377]).isEnabled()) {
                        TwoVariants m25513f = this.f22387c.f32408j.m25513f();
                        if (m25513f == null) {
                            c6801b = null;
                        } else {
                            int ordinal = m25513f.ordinal();
                            if (ordinal == 0) {
                                c6801b = AbstractC6798d1.C6803c.f22350b;
                            } else if (ordinal != 1) {
                                throw new i();
                            } else {
                                c6801b = AbstractC6798d1.C6801b.f22348b;
                            }
                        }
                    }
                }
            }
        }
        return c6801b;
    }
}
