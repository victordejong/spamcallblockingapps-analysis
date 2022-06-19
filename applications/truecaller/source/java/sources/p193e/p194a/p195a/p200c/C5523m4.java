package p193e.p194a.p195a.p200c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p283v0.AbstractC7283a;
import q3.a.g0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.c.m4 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/m4.class */
public final class C5523m4 extends AbstractC5223d3 implements AbstractC5483l4 {

    /* renamed from: h */
    public final AbstractC5776u5 f18697h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5523m4(AbstractC7283a abstractC7283a, C20592g c20592g, AbstractC5776u5 abstractC5776u5, @Named("UI") f fVar, @Named("LinkPreviewExtractorContext") a<g0> aVar, AbstractC19462a abstractC19462a) {
        super(abstractC7283a, c20592g, fVar, aVar, abstractC19462a);
        l.e(abstractC7283a, "linkMetaDataExtractor");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC5776u5, "draftEntityPresenter");
        l.e(fVar, "uiContext");
        l.e(aVar, "linkPreviewContext");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f18697h = abstractC5776u5;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5483l4
    /* renamed from: d */
    public void mo32995d() {
        mo32993i();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5483l4
    /* renamed from: f */
    public void mo32994f() {
        mo32993i();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5223d3
    /* renamed from: i */
    public void mo32993i() {
        this.f18697h.mo32595Lj(m33556h());
    }
}
