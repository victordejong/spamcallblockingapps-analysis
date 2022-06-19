package p193e.p194a.p294b.p336i.p343k;

import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.callMeBack.analytics.BizCallMeBackAction;
import com.truecaller.bizmon.callMeBack.analytics.BizCallMeBackContext;
import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p294b.p336i.AbstractC7919c;
import p193e.p194a.p294b.p336i.AbstractC7923e;
import p193e.p194a.p294b.p336i.AbstractC7924f;
import p193e.p194a.p294b.p336i.p337h.C7927b;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.i.k.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/i/k/b.class */
public final class C7945b extends AbstractC20574a<AbstractC7924f> implements AbstractC7923e {

    /* renamed from: d */
    public Contact f24580d;

    /* renamed from: e */
    public String f24581e;

    /* renamed from: f */
    public String f24582f;

    /* renamed from: g */
    public boolean f24583g;

    /* renamed from: h */
    public String f24584h;

    /* renamed from: i */
    public final f f24585i;

    /* renamed from: j */
    public final AbstractC19223c0 f24586j;

    /* renamed from: k */
    public final AbstractC7919c f24587k;

    /* renamed from: l */
    public final C7927b f24588l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7945b(@Named("UI") f fVar, AbstractC19223c0 abstractC19223c0, AbstractC7919c abstractC7919c, C7927b c7927b) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC7919c, "bizMonCallMeBackManager");
        l.e(c7927b, "bizCallMeBackAnalyticHelper");
        this.f24585i = fVar;
        this.f24586j = abstractC19223c0;
        this.f24587k = abstractC7919c;
        this.f24588l = c7927b;
    }

    /* renamed from: Jj */
    public static /* synthetic */ void m29090Jj(C7945b c7945b, BizCallMeBackAction bizCallMeBackAction, String str, int i) {
        c7945b.m29091Ij(bizCallMeBackAction, null);
    }

    /* renamed from: Ij */
    public final void m29091Ij(BizCallMeBackAction bizCallMeBackAction, String str) {
        BizCallMeBackContext bizCallMeBackContext = this.f24583g ? BizCallMeBackContext.PACS : BizCallMeBackContext.FACS;
        C7927b c7927b = this.f24588l;
        String str2 = this.f24582f;
        String str3 = this.f24581e;
        if (str3 != null) {
            c7927b.m29103a(bizCallMeBackContext, bizCallMeBackAction, str2, C18334g0.m15258K0(str3), str);
        } else {
            l.l("normalizedNumber");
            throw null;
        }
    }

    /* renamed from: Kj */
    public void m29089Kj(Contact contact, String str, String str2, boolean z) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(str, "normalizedNumber");
        this.f24580d = contact;
        this.f24581e = str;
        this.f24582f = str2;
        this.f24583g = z;
        m29091Ij(BizCallMeBackAction.SHOW_CALL_ME_BACK, null);
    }

    /* renamed from: Lj */
    public final void m29088Lj() {
        AbstractC7924f abstractC7924f = (AbstractC7924f) this.f57683a;
        if (abstractC7924f != null) {
            Contact contact = this.f24580d;
            if (contact == null) {
                l.l(AnalyticsConstants.CONTACT);
                throw null;
            }
            String m35566G = contact.m35566G();
            if (m35566G == null) {
                return;
            }
            abstractC7924f.setContactName(m35566G);
            String mo13768b = this.f24586j.mo13768b(C3478R.string.biz_acs_call_me_back_facs_request_title, m35566G);
            l.d(mo13768b, "resourceProvider.getStri…k_facs_request_title, it)");
            abstractC7924f.setRequestTitle(mo13768b);
        }
    }
}
