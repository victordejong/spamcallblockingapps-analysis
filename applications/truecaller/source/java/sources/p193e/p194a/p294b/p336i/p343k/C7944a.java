package p193e.p194a.p294b.p336i.p343k;

import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.callMeBack.analytics.BizCallMeBackAction;
import com.truecaller.bizmon.callMeBack.analytics.BizCallMeBackFailureReason;
import com.truecaller.bizmon.callMeBack.data.models.CallMeBackResponse;
import com.truecaller.data.entity.Contact;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p294b.p336i.AbstractC7919c;
import p193e.p194a.p294b.p336i.AbstractC7924f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.callMeBack.mvp.CallMeBackPresenter$requestForCallMeBack$1", f = "CallMeBackPresenter.kt", l = {40}, m = "invokeSuspend")
/* renamed from: e.a.b.i.k.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/i/k/a.class */
public final class C7944a extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f24577e;

    /* renamed from: f */
    public int f24578f;

    /* renamed from: g */
    public final /* synthetic */ C7945b f24579g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7944a(C7945b c7945b, d dVar) {
        super(2, dVar);
        this.f24579g = c7945b;
    }

    /* renamed from: i */
    public final d<s> m29094i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C7944a c7944a = new C7944a(this.f24579g, dVar);
        c7944a.f24577e = obj;
        return c7944a;
    }

    /* renamed from: k */
    public final Object m29093k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C7944a c7944a = new C7944a(this.f24579g, dVar);
        c7944a.f24577e = obj;
        return c7944a.m29092s(s.a);
    }

    /* renamed from: s */
    public final Object m29092s(Object obj) {
        a aVar = a.a;
        int i = this.f24578f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0 i0Var = (i0) this.f24577e;
            this.f24579g.m29091Ij(BizCallMeBackAction.CLICK_CALL_ME_BACK, null);
            AbstractC7924f abstractC7924f = (AbstractC7924f) this.f24579g.f57683a;
            if (abstractC7924f != null) {
                abstractC7924f.mo29107p(false);
                abstractC7924f.mo29111f(true);
            }
            C7945b c7945b = this.f24579g;
            AbstractC7919c abstractC7919c = c7945b.f24587k;
            String str = c7945b.f24581e;
            if (str == null) {
                l.l("normalizedNumber");
                throw null;
            }
            this.f24577e = i0Var;
            this.f24578f = 1;
            Object mo29120b = abstractC7919c.mo29120b(str, this);
            obj = mo29120b;
            if (mo29120b == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            i0 i0Var2 = (i0) this.f24577e;
            C25225a.m3932a3(obj);
        }
        if (((CallMeBackResponse) obj) != null) {
            C7945b c7945b2 = this.f24579g;
            AbstractC19223c0 abstractC19223c0 = c7945b2.f24586j;
            int i2 = C3478R.string.biz_acs_call_me_back_response_sub_title;
            Contact contact = c7945b2.f24580d;
            if (contact == null) {
                l.l(AnalyticsConstants.CONTACT);
                throw null;
            }
            String mo13768b = abstractC19223c0.mo13768b(i2, contact.m35566G());
            l.d(mo13768b, "resourceProvider.getStri…_sub_title, contact.name)");
            c7945b2.f24584h = mo13768b;
            C7945b c7945b3 = this.f24579g;
            AbstractC7924f abstractC7924f2 = (AbstractC7924f) c7945b3.f57683a;
            if (abstractC7924f2 != null) {
                if (c7945b3.f24583g) {
                    String str2 = c7945b3.f24584h;
                    if (str2 == null) {
                        l.l("responseSubTitle");
                        throw null;
                    }
                    abstractC7924f2.setResponseSubTitle(str2);
                    abstractC7924f2.mo29108o();
                } else {
                    abstractC7924f2.mo29106q(true);
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.f24579g.f24586j.mo13768b(C3478R.string.biz_acs_call_me_back_response_title, new Object[0]));
                    AbstractC19223c0 abstractC19223c02 = this.f24579g.f24586j;
                    int i3 = C3478R.string.biz_new_line;
                    sb.append(abstractC19223c02.mo13768b(i3, new Object[0]));
                    sb.append(this.f24579g.f24586j.mo13768b(i3, new Object[0]));
                    String str3 = this.f24579g.f24584h;
                    if (str3 == null) {
                        l.l("responseSubTitle");
                        throw null;
                    }
                    sb.append(str3);
                    abstractC7924f2.mo29110m(sb.toString());
                }
            }
            this.f24579g.m29091Ij(BizCallMeBackAction.SHOW_CALL_ME_BACK_RESPONSE, null);
        } else {
            this.f24579g.m29091Ij(BizCallMeBackAction.CLICK_CALL_ME_BACK, BizCallMeBackFailureReason.REQUEST_CALL_ME_BACK_FAILURE.getValue());
            C7945b c7945b4 = this.f24579g;
            AbstractC7924f abstractC7924f3 = (AbstractC7924f) c7945b4.f57683a;
            if (abstractC7924f3 != null) {
                String mo13768b2 = c7945b4.f24586j.mo13768b(C3478R.string.biz_acs_call_me_back_request_error, new Object[0]);
                l.d(mo13768b2, "resourceProvider.getStri…ll_me_back_request_error)");
                abstractC7924f3.mo29110m(mo13768b2);
                abstractC7924f3.mo29107p(true);
                if (!this.f24579g.f24583g) {
                    abstractC7924f3.mo29106q(false);
                }
            }
        }
        AbstractC7924f abstractC7924f4 = (AbstractC7924f) this.f24579g.f57683a;
        if (abstractC7924f4 != null) {
            abstractC7924f4.mo29111f(false);
        }
        return s.a;
    }
}
