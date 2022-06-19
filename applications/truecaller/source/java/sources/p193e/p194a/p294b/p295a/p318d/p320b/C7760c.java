package p193e.p194a.p294b.p295a.p318d.p320b;

import com.truecaller.bizmon.C3478R;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p294b.p295a.p321e.AbstractC7761a;
import p193e.p194a.p294b.p295a.p321e.AbstractC7775b;
import s1.z.c.l;
/* renamed from: e.a.b.a.d.b.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/d/b/c.class */
public final class C7760c extends AbstractC20576b<AbstractC7759b> implements AbstractC7758a {

    /* renamed from: b */
    public String f24219b;

    /* renamed from: c */
    public final AbstractC19223c0 f24220c;

    /* renamed from: d */
    public final AbstractC7775b f24221d;

    @Inject
    public C7760c(AbstractC19223c0 abstractC19223c0, AbstractC7775b abstractC7775b) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC7775b, "businessAnalyticsManager");
        this.f24220c = abstractC19223c0;
        this.f24221d = abstractC7775b;
    }

    @Override // p193e.p194a.p294b.p295a.p318d.p320b.AbstractC7758a
    /* renamed from: G0 */
    public void mo29299G0() {
        AbstractC7759b abstractC7759b = (AbstractC7759b) this.f57683a;
        if (abstractC7759b != null) {
            abstractC7759b.mo29301s();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.b.a.d.b.b] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC7759b abstractC7759b) {
        AbstractC7759b abstractC7759b2 = abstractC7759b;
        l.e(abstractC7759b2, "presenterView");
        this.f57683a = abstractC7759b2;
        String type = abstractC7759b2.getType();
        this.f24219b = type;
        int i = l.a(type, "verified_business") ? C3478R.attr.biz_verifiedBusiness_illustration : C3478R.attr.biz_priorityCall_illustration;
        String mo13768b = this.f24220c.mo13768b(l.a(this.f24219b, "verified_business") ? C3478R.string.biz_verified_business_awareness_title : C3478R.string.biz_priority_call_awareness_title, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…e\n            }\n        )");
        String mo13768b2 = this.f24220c.mo13768b(l.a(this.f24219b, "verified_business") ? C3478R.string.biz_verified_business_awareness_text : C3478R.string.biz_priority_call_awareness_text, new Object[0]);
        l.d(mo13768b2, "resourceProvider.getStri…t\n            }\n        )");
        abstractC7759b2.mo29303K9(i);
        abstractC7759b2.setTitle(mo13768b);
        abstractC7759b2.mo29302d(mo13768b2);
    }

    @Override // p193e.p194a.p294b.p295a.p318d.p320b.AbstractC7758a
    /* renamed from: a7 */
    public void mo29298a7() {
        String str = this.f24219b;
        if (str != null) {
            this.f24221d.mo29295a(l.a(str, "verified_business") ? new AbstractC7761a.C7774m("LearnMoreClicked") : new AbstractC7761a.C7773l("LearnMoreClicked"));
            AbstractC7759b abstractC7759b = (AbstractC7759b) this.f57683a;
            if (abstractC7759b == null) {
                return;
            }
            abstractC7759b.mo29300vw(str);
        }
    }
}
