package p193e.p194a.p294b.p295a.p312c.p313a.p317e0;

import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7705d;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7708e;
import p193e.p194a.p294b.p295a.p312c.p313a.p316d0.AbstractC7706a;
import p193e.p194a.p294b.p295a.p321e.AbstractC7761a;
import p193e.p194a.p294b.p295a.p321e.AbstractC7775b;
import p193e.p194a.p294b.p295a.p322f.AbstractC7790b;
import p193e.p194a.p294b.p295a.p329i.AbstractC7833a;
import s1.f0.v;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.a.c.a.e0.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/d.class */
public final class C7717d extends AbstractC7709a<AbstractC7708e> implements AbstractC7705d {

    /* renamed from: h */
    public BusinessProfile f24130h;

    /* renamed from: i */
    public final f f24131i;

    /* renamed from: j */
    public final f f24132j;

    /* renamed from: k */
    public final AbstractC7790b f24133k;

    /* renamed from: l */
    public final AbstractC19223c0 f24134l;

    /* renamed from: m */
    public final AbstractC7775b f24135m;

    /* renamed from: n */
    public final AbstractC7706a f24136n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7717d(@Named("IO") f fVar, @Named("UI") f fVar2, AbstractC7790b abstractC7790b, AbstractC19223c0 abstractC19223c0, AbstractC7775b abstractC7775b, AbstractC7706a abstractC7706a) {
        super(fVar, fVar2, abstractC7790b, abstractC19223c0);
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC7790b, "businessProfileV2Repository");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC7775b, "businessAnalyticsManager");
        l.e(abstractC7706a, "validateNameUseCase");
        this.f24131i = fVar;
        this.f24132j = fVar2;
        this.f24133k = abstractC7790b;
        this.f24134l = abstractC19223c0;
        this.f24135m = abstractC7775b;
        this.f24136n = abstractC7706a;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q
    /* renamed from: b4 */
    public void mo29341b4(BusinessProfile businessProfile) {
        l.e(businessProfile, "businessProfile");
        this.f24130h = businessProfile;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7705d
    /* renamed from: qc */
    public void mo29409qc(String str) {
        AbstractC7708e abstractC7708e;
        AbstractC7833a mo29432a = this.f24136n.mo29432a(str);
        if (!(mo29432a instanceof AbstractC7833a.C7836b)) {
            if (!(mo29432a instanceof AbstractC7833a.C7834a) || (abstractC7708e = (AbstractC7708e) this.f57683a) == null) {
                return;
            }
            String mo13768b = this.f24134l.mo13768b(mo29432a.f24378a, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…(result.errorStringResId)");
            abstractC7708e.mo29334M(mo13768b);
            return;
        }
        BusinessProfile businessProfile = this.f24130h;
        String str2 = null;
        if (businessProfile == null) {
            l.l("businessProfile");
            throw null;
        }
        if (str != null) {
            str2 = v.g0(str).toString();
        }
        businessProfile.setName(str2);
        this.f24130h = businessProfile;
        AbstractC7708e abstractC7708e2 = (AbstractC7708e) this.f57683a;
        if (abstractC7708e2 != null) {
            abstractC7708e2.mo29431fj(businessProfile);
        }
        this.f24135m.mo29295a(AbstractC7761a.C7762a.f24222a);
    }
}
