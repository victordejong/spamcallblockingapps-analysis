package p193e.p194a.p1011l.p1013c.p1016n;

import com.truecaller.C2752R;
import com.truecaller.premium.premiumusertab.newfeaturelabel.NewFeatureLabelType;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1033v2.p1037i.p1039b.C17288a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1161q5.AbstractC19688d;
import p193e.p194a.p1161q5.AbstractC19693i;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.b.a.p;
/* renamed from: e.a.l.c.n.g */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/n/g.class */
public final class C16829g extends AbstractC16824b {

    /* renamed from: a */
    public final int f47197a = 10;

    /* renamed from: b */
    public final NewFeatureLabelType f47198b = NewFeatureLabelType.WHATS_APP_CALLER_ID;

    /* renamed from: c */
    public final p f47199c = new p(2022, 2, 1);

    /* renamed from: d */
    public final AbstractC19688d f47200d;

    /* renamed from: e */
    public final AbstractC19693i f47201e;

    /* renamed from: f */
    public final AbstractC19223c0 f47202f;

    /* renamed from: g */
    public final AbstractC17197v0 f47203g;

    @Inject
    public C16829g(AbstractC19688d abstractC19688d, AbstractC19693i abstractC19693i, AbstractC19223c0 abstractC19223c0, AbstractC17197v0 abstractC17197v0) {
        l.e(abstractC19688d, "whatsAppCallerIdManager");
        l.e(abstractC19693i, "whatsAppCallerIdSettings");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC17197v0, "premiumStateSettings");
        this.f47200d = abstractC19688d;
        this.f47201e = abstractC19693i;
        this.f47202f = abstractC19223c0;
        this.f47203g = abstractC17197v0;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: a */
    public void mo16946a() {
        this.f47201e.mo12984d(true);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: b */
    public boolean mo16945b() {
        return !this.f47201e.mo12979i();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: c */
    public int mo16944c() {
        return this.f47197a;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: d */
    public p mo16943d() {
        return this.f47199c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if ((r2.f47201e.mo12987J1() || r2.f47200d.mo12990u().m12997a()) == false) goto L15;
     */
    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo16942e() {
        /*
            r2 = this;
            r0 = r2
            e.a.q5.d r0 = r0.f47200d
            boolean r0 = r0.mo12993r()
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L43
            r0 = r2
            boolean r0 = r0.m16957l()
            if (r0 != 0) goto L43
            r0 = r2
            e.a.q5.i r0 = r0.f47201e
            boolean r0 = r0.mo12987J1()
            if (r0 != 0) goto L3a
            r0 = r2
            e.a.q5.d r0 = r0.f47200d
            e.a.q5.c r0 = r0.mo12990u()
            boolean r0 = r0.m12997a()
            if (r0 == 0) goto L35
            goto L3a
        L35:
            r0 = 0
            r5 = r0
            goto L3c
        L3a:
            r0 = 1
            r5 = r0
        L3c:
            r0 = r5
            if (r0 != 0) goto L43
            goto L45
        L43:
            r0 = 0
            r4 = r0
        L45:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1013c.p1016n.C16829g.mo16942e():boolean");
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: f */
    public boolean mo16941f() {
        if (!mo16942e()) {
            return false;
        }
        return m16958k(this.f47201e.mo12981g());
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: g */
    public C17288a mo16940g(boolean z) {
        NewFeatureLabelType newFeatureLabelType = this.f47198b;
        String mo13768b = this.f47202f.mo13768b(C2752R.string.WhatsAppCallerIdNewFeatureLabelTitle, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…erIdNewFeatureLabelTitle)");
        String mo13768b2 = this.f47203g.mo16408H() ? this.f47202f.mo13768b(C2752R.string.WhatsAppCallerIdNewFeatureLabelDescriptionPremium, new Object[0]) : this.f47202f.mo13768b(C2752R.string.WhatsAppCallerIdNewFeatureLabelDescriptionNonPremium, new Object[0]);
        l.d(mo13768b2, "if (premiumStateSettings…tionNonPremium)\n        }");
        return new C17288a(newFeatureLabelType, z, mo13768b, mo13768b2);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    public NewFeatureLabelType getType() {
        return this.f47198b;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: h */
    public void mo16939h() {
        AbstractC19693i abstractC19693i = this.f47201e;
        b bVar = new b();
        l.d(bVar, "DateTime.now()");
        abstractC19693i.mo12982f(((e) bVar).a);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: i */
    public boolean mo16938i() {
        return this.f47201e.mo12983e();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16828f
    /* renamed from: j */
    public void mo16937j() {
        this.f47201e.mo12985b(true);
    }
}
