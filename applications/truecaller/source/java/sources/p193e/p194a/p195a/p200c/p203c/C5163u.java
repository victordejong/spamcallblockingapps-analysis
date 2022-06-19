package p193e.p194a.p195a.p200c.p203c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.messaging.linkpreviews.LinkMetaData;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p200c.AbstractC5223d3;
import p193e.p194a.p195a.p283v0.AbstractC7283a;
import q3.a.g0;
import s1.s;
import s1.w.f;
import s1.z.b.l;
/* renamed from: e.a.a.c.c.u */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/u.class */
public final class C5163u extends AbstractC5223d3 implements AbstractC5162t {

    /* renamed from: h */
    public l<? super LinkMetaData, s> f17654h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5163u(AbstractC7283a abstractC7283a, C20592g c20592g, @Named("UI") f fVar, @Named("LinkPreviewExtractorContext") a<g0> aVar, AbstractC19462a abstractC19462a) {
        super(abstractC7283a, c20592g, fVar, aVar, abstractC19462a);
        s1.z.c.l.e(abstractC7283a, "linkMetaDataExtractor");
        s1.z.c.l.e(c20592g, "featuresRegistry");
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(aVar, "linkPreviewContext");
        s1.z.c.l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5162t
    /* renamed from: b */
    public void mo33715b(l<? super LinkMetaData, s> lVar) {
        s1.z.c.l.e(lVar, "onUpdateRequired");
        this.f17654h = lVar;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5223d3
    /* renamed from: i */
    public void mo32993i() {
        l<? super LinkMetaData, s> lVar = this.f17654h;
        if (lVar != null) {
            s sVar = (s) lVar.d(m33556h());
        }
    }
}
