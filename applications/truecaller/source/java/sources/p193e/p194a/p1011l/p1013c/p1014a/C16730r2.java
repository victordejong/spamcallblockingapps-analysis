package p193e.p194a.p1011l.p1013c.p1014a;

import com.truecaller.C2752R;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.r2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/r2.class */
public final class C16730r2 extends AbstractC16663f<AbstractC16729r1> implements AbstractC16725q1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16730r2(AbstractC16701l1 abstractC16701l1) {
        super(abstractC16701l1);
        l.e(abstractC16701l1, "model");
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16663f, p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC16729r1 abstractC16729r1 = (AbstractC16729r1) obj;
        l.e(abstractC16729r1, "itemView");
        AbstractC16736t abstractC16736t = m17148A().get(i).f46880b;
        AbstractC16736t abstractC16736t2 = abstractC16736t;
        if (!(abstractC16736t instanceof AbstractC16736t.C16746j)) {
            abstractC16736t2 = null;
        }
        AbstractC16736t.C16746j c16746j = (AbstractC16736t.C16746j) abstractC16736t2;
        if (c16746j != null) {
            abstractC16729r1.mo17067F0(c16746j.f46961a);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return (long) C2752R.C2754id.view_premium_user_tab_list_reviews;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return m17148A().get(i).f46880b instanceof AbstractC16736t.C16746j;
    }
}
