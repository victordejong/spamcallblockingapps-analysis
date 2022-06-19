package p193e.p194a.p294b.p295a.p312c.p313a.p317e0;

import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7733f;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7734g;
import p193e.p194a.p294b.p295a.p321e.AbstractC7761a;
import p193e.p194a.p294b.p295a.p321e.AbstractC7775b;
import p193e.p194a.p294b.p295a.p322f.AbstractC7790b;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.a.c.a.e0.e */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/e.class */
public final class C7718e extends AbstractC7709a<AbstractC7734g> implements AbstractC7733f {

    /* renamed from: h */
    public BusinessProfile f24137h;

    /* renamed from: i */
    public final f f24138i;

    /* renamed from: j */
    public final f f24139j;

    /* renamed from: k */
    public final AbstractC7790b f24140k;

    /* renamed from: l */
    public final AbstractC19223c0 f24141l;

    /* renamed from: m */
    public final AbstractC7775b f24142m;

    /* renamed from: n */
    public final AbstractC18223b f24143n;

    /* renamed from: o */
    public final C20592g f24144o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7718e(@Named("IO") f fVar, @Named("UI") f fVar2, AbstractC7790b abstractC7790b, AbstractC19223c0 abstractC19223c0, AbstractC7775b abstractC7775b, AbstractC18223b abstractC18223b, @Named("features_registry") C20592g c20592g) {
        super(fVar, fVar2, abstractC7790b, abstractC19223c0);
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC7790b, "businessProfileV2Repository");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC7775b, "businessAnalyticsManager");
        l.e(abstractC18223b, "bizProfileLocalFileManager");
        l.e(c20592g, "featuresRegistry");
        this.f24138i = fVar;
        this.f24139j = fVar2;
        this.f24140k = abstractC7790b;
        this.f24141l = abstractC19223c0;
        this.f24142m = abstractC7775b;
        this.f24143n = abstractC18223b;
        this.f24144o = c20592g;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7733f
    /* renamed from: O0 */
    public void mo29380O0() {
        AbstractC7734g abstractC7734g = (AbstractC7734g) this.f57683a;
        if (abstractC7734g != null) {
            abstractC7734g.mo29374gf(this.f24144o.m10971d0().isEnabled());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00aa, code lost:
        if (r23 != null) goto L27;
     */
    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7733f
    /* renamed from: Va */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo29379Va(com.truecaller.placepicker.data.GeocodedPlace r20, java.lang.String r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p295a.p312c.p313a.p317e0.C7718e.mo29379Va(com.truecaller.placepicker.data.GeocodedPlace, java.lang.String, java.lang.String):void");
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q
    /* renamed from: b4 */
    public void mo29341b4(BusinessProfile businessProfile) {
        l.e(businessProfile, "businessProfile");
        this.f24137h = businessProfile;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7733f
    /* renamed from: i2 */
    public void mo29378i2() {
        this.f24142m.mo29295a(AbstractC7761a.C7766e.f24226a);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7733f
    /* renamed from: q1 */
    public void mo29377q1() {
        AbstractC18223b abstractC18223b = this.f24143n;
        BusinessProfile businessProfile = this.f24137h;
        if (businessProfile != null) {
            abstractC18223b.mo15397e(businessProfile);
        } else {
            l.l("businessProfile");
            throw null;
        }
    }
}
