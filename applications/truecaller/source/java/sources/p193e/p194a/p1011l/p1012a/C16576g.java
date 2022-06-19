package p193e.p194a.p1011l.p1012a;

import javax.inject.Inject;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.AbstractC19230g;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.l.a.g */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/g.class */
public final class C16576g {

    /* renamed from: a */
    public final AbstractC19230g f46575a;

    /* renamed from: b */
    public final AbstractC19215b f46576b;

    /* renamed from: c */
    public final C16572f f46577c;

    @Inject
    public C16576g(AbstractC19230g abstractC19230g, AbstractC19215b abstractC19215b, C16572f c16572f) {
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC19215b, "qaMenuSettings");
        l.e(c16572f, "debugSubscriptionRepository");
        this.f46575a = abstractC19230g;
        this.f46576b = abstractC19215b;
        this.f46577c = c16572f;
    }

    /* renamed from: a */
    public final String m17230a() {
        String mo13861S1 = this.f46576b.mo13861S1();
        boolean z = false;
        if (!(mo13861S1 == null || r.p(mo13861S1))) {
            z = false;
            if (this.f46575a.mo13788i() | this.f46575a.mo13796a()) {
                z = true;
            }
        }
        if (!z) {
            mo13861S1 = null;
        }
        return mo13861S1;
    }

    /* renamed from: b */
    public final String m17229b() {
        String mo13858V2 = this.f46576b.mo13858V2();
        if (!((true ^ (mo13858V2 == null || r.p(mo13858V2))) & (this.f46575a.mo13788i() | this.f46575a.mo13796a()))) {
            mo13858V2 = null;
        }
        return mo13858V2;
    }
}
