package p193e.p194a.p1011l.p1013c.p1014a;

import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1111o2.AbstractC18894c;
import s1.a.l;
/* renamed from: e.a.l.c.a.o0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/o0.class */
public final class C16714o0 extends AbstractC18894c<AbstractC16684i2> implements AbstractC16677h2 {

    /* renamed from: c */
    public static final /* synthetic */ l[] f46874c = {C22128a.m8621g0(C16714o0.class, "headerItem", "getHeaderItem()Lcom/truecaller/premium/premiumusertab/list/HeaderItem;", 0)};

    /* renamed from: b */
    public final AbstractC16672g2 f46875b;

    @Inject
    public C16714o0(AbstractC16672g2 abstractC16672g2) {
        s1.z.c.l.e(abstractC16672g2, "model");
        this.f46875b = abstractC16672g2;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC16684i2 abstractC16684i2, int i) {
        AbstractC16684i2 abstractC16684i22 = abstractC16684i2;
        s1.z.c.l.e(abstractC16684i22, "itemView");
        C16710n0 mo16979z9 = this.f46875b.mo16979z9(this, f46874c[0]);
        if (mo16979z9 != null) {
            abstractC16684i22.setIcon(mo16979z9.f46862a);
            abstractC16684i22.mo17085n(mo16979z9.f46863b);
            abstractC16684i22.mo17087c1(mo16979z9.f46864c);
            abstractC16684i22.mo17086k4(mo16979z9.f46865d);
            abstractC16684i22.mo17088W0(mo16979z9.f46866e);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        int i = 0;
        if (this.f46875b.mo16979z9(this, f46874c[0]) != null) {
            i = 1;
        }
        return i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return -1L;
    }
}
