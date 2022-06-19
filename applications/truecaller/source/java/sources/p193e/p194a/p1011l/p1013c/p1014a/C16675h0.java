package p193e.p194a.p1011l.p1013c.p1014a;

import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import com.truecaller.premium.premiumusertab.newfeaturelabel.NewFeatureLabelType;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d;
import p193e.p194a.p1349x.AbstractC21373l;
import p193e.p194a.p1349x.AbstractC21385w;
import p193e.p194a.p1349x.C21345i;
import p193e.p194a.p1349x.p1351h0.C21337a;
import p193e.p194a.p1349x.p1351h0.p1352b.C21340c;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.h0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/h0.class */
public final class C16675h0 extends AbstractC16663f<AbstractC16671g1> implements AbstractC16665f1 {

    /* renamed from: d */
    public final AbstractC16660e1 f46813d;

    /* renamed from: e */
    public final AbstractC21385w f46814e;

    /* renamed from: f */
    public final C21337a f46815f;

    /* renamed from: g */
    public final AbstractC21373l f46816g;

    /* renamed from: h */
    public final AbstractC16826d f46817h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16675h0(AbstractC16660e1 abstractC16660e1, AbstractC21385w abstractC21385w, C21337a c21337a, AbstractC21373l abstractC21373l, AbstractC16826d abstractC16826d) {
        super(abstractC16660e1);
        l.e(abstractC16660e1, "model");
        l.e(abstractC21385w, "ghostCallSettings");
        l.e(c21337a, "ghostCallEventLogger");
        l.e(abstractC21373l, "ghostCallManager");
        l.e(abstractC16826d, "premiumNewFeatureLabelHelper");
        this.f46813d = abstractC16660e1;
        this.f46814e = abstractC21385w;
        this.f46815f = c21337a;
        this.f46816g = abstractC21373l;
        this.f46817h = abstractC16826d;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16663f, p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        C21345i c21345i;
        AbstractC16671g1 abstractC16671g1 = (AbstractC16671g1) obj;
        l.e(abstractC16671g1, "itemView");
        super.mo11464G(abstractC16671g1, i);
        AbstractC16736t abstractC16736t = m17148A().get(i).f46880b;
        AbstractC16736t abstractC16736t2 = abstractC16736t;
        if (!(abstractC16736t instanceof AbstractC16736t.C16740d)) {
            abstractC16736t2 = null;
        }
        AbstractC16736t.C16740d c16740d = (AbstractC16736t.C16740d) abstractC16736t2;
        if (c16740d != null && (c21345i = c16740d.f46944a) != null) {
            abstractC16671g1.setPhoneNumber(c21345i.f59758a);
            abstractC16671g1.setProfileName(c21345i.f59759b);
            abstractC16671g1.mo17135L4(c21345i.f59760c);
            abstractC16671g1.mo17136D4(c21345i.f59761d);
            long j = c21345i.f59762e;
            if (j != 0) {
                abstractC16671g1.mo17137B3(j);
            } else {
                abstractC16671g1.mo17134q3();
            }
        }
        C21337a c21337a = this.f46815f;
        C10480a.m26037O1(new C21340c(((RecyclerView.AbstractC0313c0) abstractC16671g1).getAdapterPosition(), c21337a.f59734d.m17200a(), this.f46817h.mo16949h(NewFeatureLabelType.GHOST_CALL)), c21337a);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return (long) C2752R.C2754id.view_premium_user_tab_list_ghost_call;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return m17148A().get(i).f46880b instanceof AbstractC16736t.C16740d;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0244  */
    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo10026v(p193e.p194a.p1111o2.C18900h r7) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1013c.p1014a.C16675h0.mo10026v(e.a.o2.h):boolean");
    }
}
