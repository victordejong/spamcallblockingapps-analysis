package p193e.p194a.p1011l.p1012a;

import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.l.a.p */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/p.class */
public final class C16595p {

    /* renamed from: a */
    public final C16602w f46625a;

    /* renamed from: b */
    public final C16586j0 f46626b;

    /* renamed from: c */
    public final AbstractC16826d f46627c;

    @Inject
    public C16595p(C16602w c16602w, C16586j0 c16586j0, AbstractC16826d abstractC16826d) {
        l.e(c16602w, "promoAttentionHelper");
        l.e(c16586j0, "temporaryPromoCardManager");
        l.e(abstractC16826d, "premiumNewFeatureLabelHelper");
        this.f46625a = c16602w;
        this.f46626b = c16586j0;
        this.f46627c = abstractC16826d;
    }

    /* renamed from: a */
    public final void m17211a() {
        C16602w c16602w = this.f46625a;
        if (c16602w.m17199a()) {
            AbstractC16832c2 abstractC16832c2 = c16602w.f46635a;
            b bVar = new b();
            l.d(bVar, "DateTime.now()");
            abstractC16832c2.mo16882i3(((e) bVar).a);
        }
        C16586j0 c16586j0 = this.f46626b;
        if (c16586j0.m17222a()) {
            AbstractC16832c2 abstractC16832c22 = c16586j0.f46604c;
            b bVar2 = new b();
            l.d(bVar2, "DateTime.now()");
            abstractC16832c22.mo16873v0(((e) bVar2).a);
        }
        this.f46627c.mo16952e();
    }
}
