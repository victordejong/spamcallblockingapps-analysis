package p193e.p194a.p1011l;

import com.truecaller.premium.data.PremiumType;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.C17118j1;
import p193e.p194a.p1111o2.AbstractC18893b;
import p193e.p194a.p1111o2.AbstractC18894c;
import s1.z.c.l;
/* renamed from: e.a.l.u0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/u0.class */
public final class C17244u0 extends AbstractC18894c<AbstractC17250v0> implements AbstractC18893b {

    /* renamed from: b */
    public final PremiumType f48383b;

    /* renamed from: c */
    public final AbstractC16940i2 f48384c;

    @Inject
    public C17244u0(PremiumType premiumType, AbstractC16940i2 abstractC16940i2) {
        l.e(premiumType, "premiumType");
        l.e(abstractC16940i2, "premiumThemePartModel");
        this.f48383b = premiumType;
        this.f48384c = abstractC16940i2;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC17250v0 abstractC17250v0 = (AbstractC17250v0) obj;
        l.e(abstractC17250v0, "itemView");
        C17118j1 mo16746V9 = this.f48384c.mo16746V9(this.f48383b);
        if (mo16746V9 != null) {
            abstractC17250v0.mo16272f4(mo16746V9.f48046a);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return 1;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return -1L;
    }
}
