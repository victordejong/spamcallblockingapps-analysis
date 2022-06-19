package p193e.p194a.p1011l.p1013c.p1016n;

import com.truecaller.C2752R;
import com.truecaller.premium.premiumusertab.newfeaturelabel.NewFeatureLabelType;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1033v2.p1037i.p1039b.C17288a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1213s2.AbstractC20197c;
import p193e.p194a.p1213s2.p1216h.AbstractC20215e;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.b.a.p;
/* renamed from: e.a.l.c.n.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/n/a.class */
public final class C16823a extends AbstractC16824b {

    /* renamed from: a */
    public final NewFeatureLabelType f47179a = NewFeatureLabelType.ANNOUNCE_CALL;

    /* renamed from: b */
    public final p f47180b = new p(2021, 12, 1);

    /* renamed from: c */
    public final int f47181c = 10;

    /* renamed from: d */
    public final AbstractC20215e f47182d;

    /* renamed from: e */
    public final AbstractC19223c0 f47183e;

    /* renamed from: f */
    public final AbstractC17197v0 f47184f;

    /* renamed from: g */
    public final AbstractC20197c f47185g;

    @Inject
    public C16823a(AbstractC20215e abstractC20215e, AbstractC19223c0 abstractC19223c0, AbstractC17197v0 abstractC17197v0, AbstractC20197c abstractC20197c) {
        l.e(abstractC20215e, "announceCallerIdSettings");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC20197c, "announceCallerIdManager");
        this.f47182d = abstractC20215e;
        this.f47183e = abstractC19223c0;
        this.f47184f = abstractC17197v0;
        this.f47185g = abstractC20197c;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: a */
    public void mo16946a() {
        this.f47182d.mo11340d(true);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: b */
    public boolean mo16945b() {
        return !this.f47182d.mo11332i();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: c */
    public int mo16944c() {
        return this.f47181c;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: d */
    public p mo16943d() {
        return this.f47180b;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: e */
    public boolean mo16942e() {
        return this.f47185g.mo11361b() && !this.f47182d.mo11328r() && !m16957l();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: f */
    public boolean mo16941f() {
        if (!mo16942e()) {
            return false;
        }
        return m16958k(this.f47182d.mo11335g());
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: g */
    public C17288a mo16940g(boolean z) {
        NewFeatureLabelType newFeatureLabelType = this.f47179a;
        String mo13768b = this.f47183e.mo13768b(C2752R.string.AnnounceCallNewFeatureLabel, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…ounceCallNewFeatureLabel)");
        String mo13768b2 = this.f47184f.mo16408H() ? this.f47183e.mo13768b(C2752R.string.AnnounceCallNewFeatureLabelDescriptionPremiumUser, new Object[0]) : this.f47183e.mo13768b(C2752R.string.AnnounceCallNewFeatureLabelDescriptionNonPremiumUser, new Object[0]);
        l.d(mo13768b2, "if (premiumStateSettings…NonPremiumUser)\n        }");
        return new C17288a(newFeatureLabelType, z, mo13768b, mo13768b2);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    public NewFeatureLabelType getType() {
        return this.f47179a;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: h */
    public void mo16939h() {
        AbstractC20215e abstractC20215e = this.f47182d;
        b bVar = new b();
        l.d(bVar, "DateTime.now()");
        abstractC20215e.mo11336f(((e) bVar).a);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: i */
    public boolean mo16938i() {
        return this.f47182d.mo11338e();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: j */
    public void mo16937j() {
        this.f47182d.mo11341b(true);
    }
}
