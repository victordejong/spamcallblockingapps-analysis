package p193e.p194a.p1349x;

import com.truecaller.incallui.C4013R;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1349x.p1351h0.C21337a;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p717f.p733y.AbstractC13754a;
import p193e.p194a.p717f.p734z.C13811d0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.x.t */
/* loaded from: classes9-dex2jar.jar:e/a/x/t.class */
public final class C21382t extends AbstractC20574a<AbstractC21376o> implements AbstractC21375n {

    /* renamed from: d */
    public final AbstractC8426f f59841d;

    /* renamed from: e */
    public final AbstractC17197v0 f59842e;

    /* renamed from: f */
    public final C21337a f59843f;

    /* renamed from: g */
    public final AbstractC21373l f59844g;

    /* renamed from: h */
    public final AbstractC19222c f59845h;

    /* renamed from: i */
    public final f f59846i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C21382t(AbstractC8426f abstractC8426f, AbstractC17197v0 abstractC17197v0, C21337a c21337a, AbstractC21373l abstractC21373l, AbstractC19222c abstractC19222c, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC8426f, "regionUtils");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c21337a, "ghostCallEventLogger");
        l.e(abstractC21373l, "ghostCallManager");
        l.e(abstractC19222c, "clock");
        l.e(fVar, "uiContext");
        this.f59841d = abstractC8426f;
        this.f59842e = abstractC17197v0;
        this.f59843f = c21337a;
        this.f59844g = abstractC21373l;
        this.f59845h = abstractC19222c;
        this.f59846i = fVar;
    }

    /* renamed from: Ij */
    public void m9808Ij() {
        d.w2(this, (f) null, (j0) null, new C21380s(this, null), 3, (Object) null);
        AbstractC21376o abstractC21376o = (AbstractC21376o) this.f57683a;
        if (abstractC21376o != null) {
            abstractC21376o.mo9813y0();
        }
        AbstractC21376o abstractC21376o2 = (AbstractC21376o) this.f57683a;
        if (abstractC21376o2 != null) {
            abstractC21376o2.mo9822P0(C4013R.color.incallui_color_white);
        }
        AbstractC21376o abstractC21376o3 = (AbstractC21376o) this.f57683a;
        if (abstractC21376o3 != null) {
            abstractC21376o3.mo9819e(C4013R.color.incallui_color_white);
        }
        AbstractC21376o abstractC21376o4 = (AbstractC21376o) this.f57683a;
        if (abstractC21376o4 != null) {
            abstractC21376o4.mo9814x0(C4013R.color.incallui_divider_partner_color);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.x.o, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC21376o abstractC21376o) {
        AbstractC21376o abstractC21376o2 = abstractC21376o;
        l.e(abstractC21376o2, "presenterView");
        this.f57683a = abstractC21376o2;
        int i = this.f59841d.mo28596b() ? C4013R.C4014drawable.logo_white_uk : C4013R.C4014drawable.ic_truecaller_logo_white;
        AbstractC21376o abstractC21376o3 = (AbstractC21376o) this.f57683a;
        if (abstractC21376o3 != null) {
            abstractC21376o3.mo9815w(i);
        }
        if (!this.f59842e.mo16408H()) {
            AbstractC21376o abstractC21376o4 = (AbstractC21376o) this.f57683a;
            if (abstractC21376o4 == null) {
                return;
            }
            abstractC21376o4.mo9816v0();
            return;
        }
        int i2 = this.f59841d.mo28596b() ? C4013R.C4014drawable.ic_tc_premium_logo_uk : C4013R.C4014drawable.ic_tc_premium_logo;
        AbstractC21376o abstractC21376o5 = (AbstractC21376o) this.f57683a;
        if (abstractC21376o5 != null) {
            abstractC21376o5.mo9824G0();
        }
        AbstractC21376o abstractC21376o6 = (AbstractC21376o) this.f57683a;
        if (abstractC21376o6 == null) {
            return;
        }
        abstractC21376o6.mo9820X0(i2);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: Z7 */
    public void mo9807Z7(C13811d0 c13811d0) {
        l.e(c13811d0, "inCallUiAcsData");
        l.e(c13811d0, "inCallUiAcsData");
        l.e(c13811d0, "inCallUiAcsData");
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f59844g.mo9830v();
        super.mo9806c();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: od */
    public void mo9805od() {
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: sc */
    public void mo9804sc(String str) {
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: zj */
    public void mo9803zj(AbstractC13754a abstractC13754a) {
    }
}
