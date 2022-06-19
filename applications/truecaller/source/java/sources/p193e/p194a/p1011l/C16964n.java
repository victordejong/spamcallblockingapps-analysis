package p193e.p194a.p1011l;

import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1161q5.AbstractC19688d;
import p193e.p194a.p1193r5.C19963m0;
import p193e.p194a.p1193r5.C19966n0;
import p193e.p194a.p613c0.AbstractC10908f;
import p193e.p194a.p613c0.C10912h;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.l.n */
/* loaded from: classes12-dex2jar.jar:e/a/l/n.class */
public final class C16964n implements AbstractC16965n0 {

    /* renamed from: a */
    public final AbstractC19688d f47585a;

    /* renamed from: b */
    public final C19966n0 f47586b;

    /* renamed from: c */
    public final C10912h f47587c;

    public C16964n(AbstractC19688d abstractC19688d, C19966n0 c19966n0, C10912h c10912h) {
        l.e(abstractC19688d, "whatsAppCallerIdManager");
        l.e(c19966n0, "revealProfileViewAbTestManager");
        l.e(c10912h, "experimentRegistry");
        this.f47585a = abstractC19688d;
        this.f47586b = c19966n0;
        this.f47587c = c10912h;
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: a */
    public void mo16647a(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        if (c16956m0.f47560a.ordinal() != 15) {
            return;
        }
        AbstractC10908f.m25507e(this.f47587c.f32403e, false, null, 3, null);
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: b */
    public void mo16646b(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        l.e(c16956m0, "params");
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: c */
    public void mo16645c(C16993f c16993f) {
        l.e(c16993f, "subscription");
        l.e(c16993f, "subscription");
    }

    @Override // p193e.p194a.p1011l.AbstractC16965n0
    /* renamed from: d */
    public void mo16644d(C16956m0 c16956m0) {
        l.e(c16956m0, "params");
        int ordinal = c16956m0.f47560a.ordinal();
        if (ordinal == 15) {
            AbstractC10908f.m25508d(this.f47587c.f32403e, false, null, 3, null);
            C19966n0 c19966n0 = this.f47586b;
            d.w2(d.h(c19966n0.f56467d.plus(d.j((p1) null, 1, (Object) null))), (f) null, (j0) null, new C19963m0(c19966n0, null), 3, (Object) null);
        } else if (ordinal != 55) {
            if (ordinal != 57) {
                return;
            }
            AbstractC10908f.m25508d(this.f47587c.f32405g, true, null, 2, null);
        } else {
            this.f47585a.mo12991t();
            AbstractC10908f.m25508d(this.f47587c.f32409k, false, null, 3, null);
            AbstractC10908f.m25508d(this.f47587c.f32402d, false, null, 3, null);
        }
    }
}
