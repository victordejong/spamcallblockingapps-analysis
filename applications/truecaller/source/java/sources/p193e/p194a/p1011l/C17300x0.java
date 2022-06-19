package p193e.p194a.p1011l;

import com.truecaller.premium.data.PremiumType;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.C17090g0;
import p193e.p194a.p1011l.p1025p2.C17118j1;
import p193e.p194a.p1111o2.AbstractC18893b;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import s1.z.c.l;
/* renamed from: e.a.l.x0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/x0.class */
public final class C17300x0 extends AbstractC18894c<AbstractC17303y0> implements AbstractC18893b, AbstractC18904l {

    /* renamed from: b */
    public final PremiumType f48535b;

    /* renamed from: c */
    public final AbstractC16940i2 f48536c;

    /* renamed from: d */
    public final AbstractC17213q0 f48537d;

    @Inject
    public C17300x0(PremiumType premiumType, AbstractC16940i2 abstractC16940i2, AbstractC17213q0 abstractC17213q0) {
        l.e(premiumType, "premiumType");
        l.e(abstractC16940i2, "premiumThemePartModel");
        l.e(abstractC17213q0, "detailsNavigator");
        this.f48535b = premiumType;
        this.f48536c = abstractC16940i2;
        this.f48537d = abstractC17213q0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC17303y0 abstractC17303y0 = (AbstractC17303y0) obj;
        l.e(abstractC17303y0, "itemView");
        C17118j1 mo16746V9 = this.f48536c.mo16746V9(this.f48535b);
        if (mo16746V9 != null) {
            abstractC17303y0.mo16264W2(mo16746V9.f48051f.get(i));
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        List<C17090g0> list;
        C17118j1 mo16746V9 = this.f48536c.mo16746V9(this.f48535b);
        return (mo16746V9 == null || (list = mo16746V9.f48051f) == null) ? 0 : list.size();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return -1L;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        this.f48537d.mo16367Te(this.f48535b, c18900h.f53002b);
        return true;
    }
}
