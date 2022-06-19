package p193e.p194a.p1275v.p1276a.p1293m0;

import com.razorpay.AnalyticsConstants;
import com.truecaller.details_view.C3857R;
import p193e.p194a.p936j3.AbstractC15549f;
import s1.z.c.l;
/* renamed from: e.a.v.a.m0.c */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/m0/c.class */
public final class C20796c implements AbstractC15549f.AbstractC15551b {

    /* renamed from: a */
    public final /* synthetic */ C20797d f58448a;

    public C20796c(C20797d c20797d) {
        this.f58448a = c20797d;
    }

    @Override // p193e.p194a.p936j3.AbstractC15549f.AbstractC15551b
    /* renamed from: a */
    public void mo10691a(int i, String str) {
        l.e(str, AnalyticsConstants.NAME);
        if (i == 0) {
            C20797d c20797d = this.f58448a;
            AbstractC20795b abstractC20795b = (AbstractC20795b) c20797d.f57683a;
            if (abstractC20795b != null) {
                String mo13768b = c20797d.f58451d.mo13768b(C3857R.string.details_view_caller_contact_failed, new Object[0]);
                l.d(mo13768b, "resourceProvider.getStri…ew_caller_contact_failed)");
                abstractC20795b.mo10688M(mo13768b);
            }
        } else if (i == 1) {
            C20797d c20797d2 = this.f58448a;
            AbstractC20795b abstractC20795b2 = (AbstractC20795b) c20797d2.f57683a;
            if (abstractC20795b2 != null) {
                String mo13768b2 = c20797d2.f58451d.mo13768b(C3857R.string.details_view_caller_contact_sent_text, str, "");
                l.d(mo13768b2, "resourceProvider.getStri… name, StringUtils.EMPTY)");
                abstractC20795b2.mo10689H(mo13768b2);
            }
        } else if (i == 2) {
            C20797d c20797d3 = this.f58448a;
            AbstractC20795b abstractC20795b3 = (AbstractC20795b) c20797d3.f57683a;
            if (abstractC20795b3 != null) {
                String mo13768b3 = c20797d3.f58451d.mo13768b(C3857R.string.details_view_caller_contact_already_sent, new Object[0]);
                l.d(mo13768b3, "resourceProvider.getStri…ler_contact_already_sent)");
                abstractC20795b3.mo10688M(mo13768b3);
            }
        } else if (i == 3) {
            C20797d c20797d4 = this.f58448a;
            AbstractC20795b abstractC20795b4 = (AbstractC20795b) c20797d4.f57683a;
            if (abstractC20795b4 != null) {
                String mo13768b4 = c20797d4.f58451d.mo13768b(C3857R.string.details_view_caller_contact_insufficient_requests, new Object[0]);
                l.d(mo13768b4, "resourceProvider.getStri…ct_insufficient_requests)");
                abstractC20795b4.mo10688M(mo13768b4);
            }
        }
        C20797d c20797d5 = this.f58448a;
        AbstractC20795b abstractC20795b5 = (AbstractC20795b) c20797d5.f57683a;
        if (abstractC20795b5 != null) {
            String mo13768b5 = c20797d5.f58451d.mo13768b(C3857R.string.details_view_caller_contact_ask_for_details_text, new Object[0]);
            l.d(mo13768b5, "resourceProvider.getStri…act_ask_for_details_text)");
            abstractC20795b5.mo10686s(mo13768b5);
        }
    }
}
