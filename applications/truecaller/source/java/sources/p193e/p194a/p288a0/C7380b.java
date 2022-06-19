package p193e.p194a.p288a0;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.contactfeedback.model.Profile;
import com.truecaller.spamcategories.SpamCategoryRequest;
import com.truecaller.spamcategories.SpamCategoryResult;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1138q.p1145i.AbstractC19456a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p288a0.p289a.AbstractC7379m;
import p193e.p194a.p372b0.p373a.p389v.AbstractC8339a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.g;
import s1.n;
import s1.u.i;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a0.b */
/* loaded from: classes12-dex2jar.jar:e/a/a0/b.class */
public final class C7380b extends AbstractC20574a<AbstractC7385f> implements AbstractC7384e {

    /* renamed from: e */
    public AbstractC7379m f23497e;

    /* renamed from: f */
    public SpamCategoryResult f23498f;

    /* renamed from: g */
    public SpamCategoryRequest f23499g;

    /* renamed from: h */
    public AbstractC7386g f23500h;

    /* renamed from: i */
    public final g f23501i;

    /* renamed from: j */
    public Profile f23502j;

    /* renamed from: m */
    public final f f23505m;

    /* renamed from: n */
    public final AbstractC7390i f23506n;

    /* renamed from: o */
    public final AbstractC19462a f23507o;

    /* renamed from: p */
    public final AbstractC8541a f23508p;

    /* renamed from: q */
    public final AbstractC8339a f23509q;

    /* renamed from: r */
    public final AbstractC19222c f23510r;

    /* renamed from: s */
    public final AbstractC19456a f23511s;

    /* renamed from: d */
    public final List<AbstractC7379m> f23496d = new ArrayList();

    /* renamed from: k */
    public final g f23503k = C25225a.m3978P1(new a(1, this));

    /* renamed from: l */
    public final g f23504l = C25225a.m3978P1(new a(0, this));

    /* renamed from: e.a.a0.b$b */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/b$b.class */
    public static final class C7381b extends m implements a<Profile> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7381b() {
            super(0);
            C7380b.this = r4;
        }

        public Object invoke() {
            String string = C7380b.this.f23508p.getString("profileFirstName", "");
            l.d(string, "coreSettings.getString(C…gs.PROFILE_FIRSTNAME, \"\")");
            String string2 = C7380b.this.f23508p.getString("profileAvatar", "");
            l.d(string2, "coreSettings.getString(C…tings.PROFILE_AVATAR, \"\")");
            return new Profile(string, string2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7380b(@Named("UI") f fVar, AbstractC7390i abstractC7390i, AbstractC19462a abstractC19462a, AbstractC8541a abstractC8541a, AbstractC8339a abstractC8339a, AbstractC19222c abstractC19222c, AbstractC19456a abstractC19456a) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC7390i, "repository");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8339a, "commentBoxValidator");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19456a, "commentFeedbackProcessorBridge");
        this.f23505m = fVar;
        this.f23506n = abstractC7390i;
        this.f23507o = abstractC19462a;
        this.f23508p = abstractC8541a;
        this.f23509q = abstractC8339a;
        this.f23510r = abstractC19222c;
        this.f23511s = abstractC19456a;
        n m3978P1 = C25225a.m3978P1(new C7381b());
        this.f23501i = m3978P1;
        this.f23502j = (Profile) m3978P1.getValue();
    }

    /* renamed from: Ij */
    public final SpamCategoryResult m29723Ij() {
        SpamCategoryResult spamCategoryResult = this.f23498f;
        if (spamCategoryResult == null) {
            spamCategoryResult = new SpamCategoryResult(null, null, false, null, false, false, null, Constants.ERR_WATERMARKR_INFO);
        }
        String str = spamCategoryResult.f14926d;
        boolean z = false;
        boolean z2 = str == null || r.p(str);
        String str2 = spamCategoryResult.f14924b;
        if (str2 == null || r.p(str2)) {
            z = true;
        }
        return SpamCategoryResult.m34735a(spamCategoryResult, null, null, false, null, !z2, !z, null, 79);
    }

    /* renamed from: Jj */
    public final void m29722Jj() {
        SpamCategoryResult m29723Ij = m29723Ij();
        String str = "SpamCategoryResult: " + m29723Ij;
        if (m29723Ij.f14928f) {
            AbstractC7385f abstractC7385f = (AbstractC7385f) this.f57683a;
            if (abstractC7385f == null) {
                return;
            }
            abstractC7385f.mo29705pd(m29723Ij);
            return;
        }
        AbstractC7385f abstractC7385f2 = (AbstractC7385f) this.f57683a;
        if (abstractC7385f2 == null) {
            return;
        }
        SpamCategoryRequest spamCategoryRequest = this.f23499g;
        if (spamCategoryRequest != null) {
            abstractC7385f2.mo29705pd(SpamCategoryResult.m34735a(m29723Ij, null, spamCategoryRequest.f14919a, false, null, false, false, null, 125));
        } else {
            l.l(RemoteMessageConst.DATA);
            throw null;
        }
    }

    /* renamed from: Kj */
    public final int m29721Kj() {
        return ((Number) this.f23504l.getValue()).intValue();
    }

    /* renamed from: Lj */
    public final void m29720Lj(String str) {
        AbstractC19462a abstractC19462a = this.f23507o;
        HashMap hashMap = new HashMap();
        hashMap.put("ViewInteraction", str);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("ContactBlocked", null, hashMap, null);
        l.d(c19505a, "AnalyticsEvent.Builder(A…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
    }

    /* renamed from: Mj */
    public void m29719Mj(AbstractC7379m abstractC7379m) {
        AbstractC7385f abstractC7385f;
        l.e(abstractC7379m, "category");
        AbstractC7379m abstractC7379m2 = this.f23497e;
        if (abstractC7379m2 != null && (abstractC7385f = (AbstractC7385f) this.f57683a) != null) {
            abstractC7385f.mo29714Dp(abstractC7379m2);
        }
        if (l.a(this.f23497e, abstractC7379m)) {
            this.f23497e = null;
            return;
        }
        this.f23497e = abstractC7379m;
        m29720Lj("CategoryClicked");
        AbstractC7385f abstractC7385f2 = (AbstractC7385f) this.f57683a;
        if (abstractC7385f2 == null) {
            return;
        }
        abstractC7385f2.mo29703rv(abstractC7379m);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f9, code lost:
        if (r0 != false) goto L42;
     */
    /* renamed from: Nj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m29718Nj(java.lang.String r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p288a0.C7380b.m29718Nj(java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.a0.f] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC7385f abstractC7385f) {
        AbstractC7385f abstractC7385f2 = abstractC7385f;
        l.e(abstractC7385f2, "presenterView");
        this.f57683a = abstractC7385f2;
        m29720Lj("Open");
        SpamCategoryRequest spamCategoryRequest = this.f23499g;
        if (spamCategoryRequest == null) {
            l.l(RemoteMessageConst.DATA);
            throw null;
        }
        abstractC7385f2.mo29704py(spamCategoryRequest.f14919a);
        abstractC7385f2.mo29706p3(m29721Kj());
        abstractC7385f2.mo29712Z3(i.T(new Profile[]{(Profile) this.f23501i.getValue(), null}));
        d.w2(this, (f) null, (j0) null, new C7389h(this, null), 3, (Object) null);
    }
}
