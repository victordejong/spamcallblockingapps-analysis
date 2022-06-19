package p193e.p194a.p294b.p345k.p350c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.bizmon.covidDirectory.config.CovidDirectoryBanner;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p345k.p346a.AbstractC7956a;
import p193e.p194a.p294b.p345k.p346a.C7964d;
import p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7969c;
import p193e.p194a.p294b.p370p.AbstractC8204c;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.k;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.k.c.i */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/c/i.class */
public final class C7994i extends AbstractC20574a<AbstractC7988e> implements AbstractC7987d {

    /* renamed from: d */
    public int f24682d;

    /* renamed from: e */
    public final AbstractC7956a f24683e;

    /* renamed from: f */
    public final AbstractC7969c f24684f;

    /* renamed from: g */
    public final AbstractC19223c0 f24685g;

    /* renamed from: h */
    public final f f24686h;

    /* renamed from: i */
    public final f f24687i;

    /* renamed from: j */
    public final AbstractC19462a f24688j;

    /* renamed from: k */
    public final AbstractC19854f<AbstractC19463a0> f24689k;

    /* renamed from: l */
    public final C20592g f24690l;

    /* renamed from: m */
    public final AbstractC8204c f24691m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7994i(AbstractC7956a abstractC7956a, AbstractC7969c abstractC7969c, AbstractC19223c0 abstractC19223c0, @Named("UI") f fVar, @Named("IO") f fVar2, AbstractC19462a abstractC19462a, AbstractC19854f<AbstractC19463a0> abstractC19854f, C20592g c20592g, AbstractC8204c abstractC8204c) {
        super(fVar);
        l.e(abstractC7956a, "manager");
        l.e(abstractC7969c, "districtDao");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncIOContext");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19854f, "eventsTracker");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC8204c, "bizMonSettings");
        this.f24683e = abstractC7956a;
        this.f24684f = abstractC7969c;
        this.f24685g = abstractC19223c0;
        this.f24686h = fVar;
        this.f24687i = fVar2;
        this.f24688j = abstractC19462a;
        this.f24689k = abstractC19854f;
        this.f24690l = c20592g;
        this.f24691m = abstractC8204c;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.b.k.c.e, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC7988e abstractC7988e) {
        AbstractC7988e abstractC7988e2 = abstractC7988e;
        l.e(abstractC7988e2, "presenterView");
        this.f57683a = abstractC7988e2;
        abstractC7988e2.mo28986g4();
        C20592g c20592g = this.f24690l;
        if (c20592g.f57736F4.m10941a(c20592g, C20592g.f57695p6[296]).isEnabled()) {
            CovidDirectoryBanner m29057a = ((C7964d) this.f24683e).m29057a();
            if (m29057a != null) {
                String imageUrl = m29057a.getImageUrl();
                if (imageUrl != null) {
                    if (!(!r.p(imageUrl))) {
                        imageUrl = null;
                    }
                    if (imageUrl != null) {
                        abstractC7988e2.mo28993Nq(true);
                        abstractC7988e2.mo28996Jg(imageUrl);
                    }
                }
            }
            abstractC7988e2.mo28993Nq(false);
        } else {
            abstractC7988e2.mo28993Nq(false);
        }
        d.w2(this, (f) null, (j0) null, new C7989f(this, false, null), 3, (Object) null);
        String source = abstractC7988e2.getSource();
        if (source == null) {
            source = "others";
        }
        C22128a.m8711G0("COVID_DIRECTORY_DISTRICT_LIST", null, C22128a.m8667T("source", source), null, "eventBuilder.build()", this.f24688j);
        AbstractC19463a0 mo11854a = this.f24689k.mo11854a();
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("COVID_DIRECTORY_DISTRICT_LIST");
        m15852a.m15848d(C25225a.m3938Z1(new k("source", source)));
        mo11854a.mo13111a(m15852a.build());
    }
}
