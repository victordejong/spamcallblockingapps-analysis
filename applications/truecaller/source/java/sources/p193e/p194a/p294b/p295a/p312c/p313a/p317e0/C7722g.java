package p193e.p194a.p294b.p295a.p312c.p313a.p317e0;

import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import com.truecaller.profile.data.dto.businessV2.LocationDetail;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7737j;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7738k;
import p193e.p194a.p294b.p295a.p321e.AbstractC7761a;
import p193e.p194a.p294b.p295a.p321e.AbstractC7775b;
import p193e.p194a.p294b.p295a.p322f.AbstractC7790b;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.a.c.a.e0.g */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/g.class */
public final class C7722g extends AbstractC7709a<AbstractC7738k> implements AbstractC7737j {

    /* renamed from: h */
    public BusinessProfile f24162h;

    /* renamed from: i */
    public final f f24163i;

    /* renamed from: j */
    public final f f24164j;

    /* renamed from: k */
    public final AbstractC7790b f24165k;

    /* renamed from: l */
    public final AbstractC19223c0 f24166l;

    /* renamed from: m */
    public final AbstractC7775b f24167m;

    /* renamed from: n */
    public final AbstractC18223b f24168n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7722g(@Named("IO") f fVar, @Named("UI") f fVar2, AbstractC7790b abstractC7790b, AbstractC19223c0 abstractC19223c0, AbstractC7775b abstractC7775b, AbstractC18223b abstractC18223b) {
        super(fVar, fVar2, abstractC7790b, abstractC19223c0);
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC7790b, "businessProfileV2Repository");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC7775b, "businessAnalyticsManager");
        l.e(abstractC18223b, "bizProfileLocalFileManager");
        this.f24163i = fVar;
        this.f24164j = fVar2;
        this.f24165k = abstractC7790b;
        this.f24166l = abstractC19223c0;
        this.f24167m = abstractC7775b;
        this.f24168n = abstractC18223b;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.b.a.c.a.k, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC7738k) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        this.f24167m.mo29295a(new AbstractC7761a.C7769h("ManualFormShown"));
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q
    /* renamed from: b4 */
    public void mo29341b4(BusinessProfile businessProfile) {
        l.e(businessProfile, "businessProfile");
        this.f24162h = businessProfile;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7737j
    /* renamed from: o9 */
    public void mo29361o9(BusinessProfile businessProfile) {
        l.e(businessProfile, "businessProfile");
        List<LocationDetail> locationDetails = businessProfile.getLocationDetails();
        if (locationDetails != null) {
            LocationDetail locationDetail = locationDetails.get(0);
            AbstractC7738k abstractC7738k = (AbstractC7738k) this.f57683a;
            if (abstractC7738k == null) {
                return;
            }
            abstractC7738k.mo29358Ql(locationDetail.getZipCode(), locationDetail.getCity(), locationDetail.getState());
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7737j
    /* renamed from: q1 */
    public void mo29360q1() {
        AbstractC18223b abstractC18223b = this.f24168n;
        BusinessProfile businessProfile = this.f24162h;
        if (businessProfile != null) {
            abstractC18223b.mo15397e(businessProfile);
        } else {
            l.l("businessProfile");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0101, code lost:
        if (r26 != null) goto L30;
     */
    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7737j
    /* renamed from: rf */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo29359rf(java.lang.String r20, java.lang.String r21, java.lang.String r22, java.lang.String r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p295a.p312c.p313a.p317e0.C7722g.mo29359rf(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }
}
