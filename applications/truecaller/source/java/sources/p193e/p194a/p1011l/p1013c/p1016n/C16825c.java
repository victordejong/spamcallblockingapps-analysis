package p193e.p194a.p1011l.p1013c.p1016n;

import com.truecaller.C2752R;
import com.truecaller.premium.premiumusertab.newfeaturelabel.NewFeatureLabelType;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1033v2.p1037i.p1039b.C17288a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1349x.AbstractC21373l;
import p193e.p194a.p1349x.AbstractC21385w;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.b.a.p;
/* renamed from: e.a.l.c.n.c */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/n/c.class */
public final class C16825c extends AbstractC16824b {

    /* renamed from: a */
    public final NewFeatureLabelType f47186a = NewFeatureLabelType.GHOST_CALL;

    /* renamed from: b */
    public final p f47187b = new p(2021, 11, 1);

    /* renamed from: c */
    public final int f47188c = 10;

    /* renamed from: d */
    public final AbstractC21385w f47189d;

    /* renamed from: e */
    public final AbstractC19223c0 f47190e;

    /* renamed from: f */
    public final AbstractC17197v0 f47191f;

    /* renamed from: g */
    public final AbstractC21373l f47192g;

    @Inject
    public C16825c(AbstractC21385w abstractC21385w, AbstractC19223c0 abstractC19223c0, AbstractC17197v0 abstractC17197v0, AbstractC21373l abstractC21373l) {
        l.e(abstractC21385w, "ghostCallSettings");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC21373l, "ghostCallManager");
        this.f47189d = abstractC21385w;
        this.f47190e = abstractC19223c0;
        this.f47191f = abstractC17197v0;
        this.f47192g = abstractC21373l;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: a */
    public void mo16946a() {
        this.f47189d.mo9793d(true);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: b */
    public boolean mo16945b() {
        return !this.f47189d.mo9787i();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: c */
    public int mo16944c() {
        return this.f47188c;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: d */
    public p mo16943d() {
        return this.f47187b;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: e */
    public boolean mo16942e() {
        return this.f47192g.mo9832b() && !m16957l() && !this.f47189d.mo9801D1();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: f */
    public boolean mo16941f() {
        if (!mo16942e()) {
            return false;
        }
        return m16958k(this.f47189d.mo9790g());
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: g */
    public C17288a mo16940g(boolean z) {
        NewFeatureLabelType newFeatureLabelType = this.f47186a;
        String mo13768b = this.f47190e.mo13768b(C2752R.string.PretendCallNewFeatureLabel, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…etendCallNewFeatureLabel)");
        String mo13768b2 = this.f47191f.mo16408H() ? this.f47190e.mo13768b(C2752R.string.PretendCallNewFeatureLabelDescriptionPremiumUser, new Object[0]) : this.f47190e.mo13768b(C2752R.string.PretendCallNewFeatureLabelDescriptionNonPremiumUser, new Object[0]);
        l.d(mo13768b2, "if (premiumStateSettings…NonPremiumUser)\n        }");
        return new C17288a(newFeatureLabelType, z, mo13768b, mo13768b2);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    public NewFeatureLabelType getType() {
        return this.f47186a;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: h */
    public void mo16939h() {
        AbstractC21385w abstractC21385w = this.f47189d;
        b bVar = new b();
        l.d(bVar, "DateTime.now()");
        abstractC21385w.mo9791f(((e) bVar).a);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: i */
    public boolean mo16938i() {
        return this.f47189d.mo9792e();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: j */
    public void mo16937j() {
        this.f47189d.mo9794b(true);
    }
}
