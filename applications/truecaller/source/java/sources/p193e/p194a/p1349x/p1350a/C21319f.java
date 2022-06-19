package p193e.p194a.p1349x.p1350a;

import com.truecaller.incallui.C4013R;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1349x.AbstractC21326c;
import p193e.p194a.p1349x.AbstractC21334g;
import p193e.p194a.p1349x.AbstractC21373l;
import p193e.p194a.p1349x.AbstractC21385w;
import p193e.p194a.p1349x.p1351h0.C21337a;
import p193e.p194a.p717f.p733y.AbstractC13754a;
import p193e.p194a.p717f.p734z.C13811d0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.x.a.f */
/* loaded from: classes9-dex2jar.jar:e/a/x/a/f.class */
public final class C21319f extends AbstractC21326c<AbstractC21321h> implements AbstractC21320g {

    /* renamed from: f */
    public final AbstractC21385w f59708f;

    /* renamed from: g */
    public final AbstractC21373l f59709g;

    /* renamed from: h */
    public final C21337a f59710h;

    /* renamed from: i */
    public final f f59711i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C21319f(AbstractC21385w abstractC21385w, AbstractC21373l abstractC21373l, C21337a c21337a, @Named("UI") f fVar) {
        super(fVar, abstractC21385w);
        l.e(abstractC21385w, "ghostCallSettings");
        l.e(abstractC21373l, "ghostCallManager");
        l.e(c21337a, "ghostCallEventLogger");
        l.e(fVar, "uiContext");
        this.f59708f = abstractC21385w;
        this.f59709g = abstractC21373l;
        this.f59710h = c21337a;
        this.f59711i = fVar;
    }

    /* renamed from: Jj */
    public void m9900Jj() {
        AbstractC21334g abstractC21334g = (AbstractC21334g) this.f57683a;
        if (abstractC21334g != null) {
            abstractC21334g.mo9882C5();
        }
        String mo9784w = this.f59708f.mo9784w();
        if (mo9784w.length() == 0) {
            AbstractC21321h abstractC21321h = (AbstractC21321h) this.f57683a;
            if (abstractC21321h != null) {
                abstractC21321h.mo9899J();
            }
            AbstractC21321h abstractC21321h2 = (AbstractC21321h) this.f57683a;
            if (abstractC21321h2 != null) {
                abstractC21321h2.mo9894Z();
            }
        } else {
            AbstractC21321h abstractC21321h3 = (AbstractC21321h) this.f57683a;
            if (abstractC21321h3 != null) {
                abstractC21321h3.setPhoneNumber(mo9784w);
            }
            AbstractC21321h abstractC21321h4 = (AbstractC21321h) this.f57683a;
            if (abstractC21321h4 != null) {
                abstractC21321h4.mo9894Z();
            }
        }
        AbstractC21326c.m9888Ij(this, null, null, null, 7, null);
        AbstractC21321h abstractC21321h5 = (AbstractC21321h) this.f57683a;
        if (abstractC21321h5 != null) {
            abstractC21321h5.mo9897L0(C4013R.color.incallui_identified_color);
        }
        AbstractC21321h abstractC21321h6 = (AbstractC21321h) this.f57683a;
        if (abstractC21321h6 != null) {
            abstractC21321h6.setProfileName(this.f59708f.mo9797V0());
        }
        AbstractC21321h abstractC21321h7 = (AbstractC21321h) this.f57683a;
        if (abstractC21321h7 != null) {
            abstractC21321h7.mo9893r1();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.x.a.h] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC21321h) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        r0.mo9895M2();
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
        AbstractC21321h abstractC21321h = (AbstractC21321h) this.f57683a;
        if (abstractC21321h != null) {
            abstractC21321h.mo9896M0();
        }
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
