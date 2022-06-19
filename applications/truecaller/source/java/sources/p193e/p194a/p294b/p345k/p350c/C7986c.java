package p193e.p194a.p294b.p345k.p350c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.covidDirectory.config.CovidDirectoryDisclaimerData;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import p193e.p194a.p294b.p345k.p346a.AbstractC7956a;
import p193e.p194a.p294b.p345k.p346a.C7964d;
import p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7965a;
import p193e.p194a.p294b.p345k.p347b.p349b.C7980a;
import p193e.p194a.p372b0.p430q.AbstractC8576d0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.u.s;
import s1.w.f;
import s1.z.c.b0;
import s1.z.c.l;
/* renamed from: e.a.b.k.c.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/c/c.class */
public final class C7986c extends AbstractC20574a<AbstractC7983a> implements AbstractC20580e {

    /* renamed from: d */
    public List<C7980a> f24663d = s.a;

    /* renamed from: e */
    public String f24664e;

    /* renamed from: f */
    public final AbstractC19223c0 f24665f;

    /* renamed from: g */
    public final AbstractC7956a f24666g;

    /* renamed from: h */
    public final f f24667h;

    /* renamed from: i */
    public final f f24668i;

    /* renamed from: j */
    public final AbstractC7965a f24669j;

    /* renamed from: k */
    public final AbstractC19462a f24670k;

    /* renamed from: l */
    public final AbstractC19854f<AbstractC19463a0> f24671l;

    /* renamed from: m */
    public final AbstractC8576d0 f24672m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7986c(AbstractC19223c0 abstractC19223c0, AbstractC7956a abstractC7956a, @Named("IO") f fVar, @Named("UI") f fVar2, AbstractC7965a abstractC7965a, AbstractC19462a abstractC19462a, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC8576d0 abstractC8576d0) {
        super(fVar2);
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC7956a, "covidDirectoryConfigManager");
        l.e(fVar, "asyncIoContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC7965a, "contactDao");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19854f, "eventsTracker");
        l.e(abstractC8576d0, "profileDetailsHelper");
        this.f24665f = abstractC19223c0;
        this.f24666g = abstractC7956a;
        this.f24667h = fVar;
        this.f24668i = fVar2;
        this.f24669j = abstractC7965a;
        this.f24670k = abstractC19462a;
        this.f24671l = abstractC19854f;
        this.f24672m = abstractC8576d0;
        String mo13768b = ((C19235i0) abstractC19223c0).mo13768b(C3478R.string.biz_govt_general_services, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…iz_govt_general_services)");
        this.f24664e = mo13768b;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.b.k.c.a] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC7983a) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        String mo29013P1 = r0.mo29013P1();
        if (mo29013P1 != null) {
            if (!(mo29013P1.length() > 0)) {
                mo29013P1 = null;
            }
            if (mo29013P1 != null) {
                this.f24664e = mo29013P1;
            }
        }
        r0.mo29009o(this.f24664e);
        CovidDirectoryDisclaimerData m29056b = ((C7964d) this.f24666g).m29056b();
        if (m29056b != null) {
            String text = m29056b.getText();
            boolean z = true;
            if (text != null) {
                z = text.length() == 0;
            }
            if (!z) {
                if (m29056b.getHyperlinkText() == null || m29056b.getText() == null || m29056b.getUrl() == null) {
                    String text2 = m29056b.getText();
                    if (text2 != null) {
                        r0.mo29023G8(text2);
                    }
                } else {
                    r0.mo29012Pf(m29056b.getText(), m29056b.getHyperlinkText());
                }
                r0.mo29019Hk();
            }
        }
        b0 b0Var = new b0();
        Long mo29015N3 = r0.mo29015N3();
        b0Var.a = mo29015N3 != null ? mo29015N3.longValue() : (char) 0;
        d.w2(this, (f) null, (j0) null, new C7984b(r0, b0Var, null, this, r0), 3, (Object) null);
    }
}
