package p193e.p194a.p1011l.p1013c.p1014a;

import com.truecaller.C2752R;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17087f0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.r */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/r.class */
public final class C16727r {

    /* renamed from: a */
    public final AbstractC17197v0 f46899a;

    /* renamed from: b */
    public final C17087f0 f46900b;

    /* renamed from: c */
    public final AbstractC19233h0 f46901c;

    @Inject
    public C16727r(AbstractC17197v0 abstractC17197v0, C17087f0 c17087f0, AbstractC19233h0 abstractC19233h0) {
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c17087f0, "premiumExpireDateHelper");
        l.e(abstractC19233h0, "resourceProvider");
        this.f46899a = abstractC17197v0;
        this.f46900b = c17087f0;
        this.f46901c = abstractC19233h0;
    }

    /* renamed from: a */
    public final C16723q m17072a(int i) {
        String mo13768b = this.f46901c.mo13768b(C2752R.string.PremiumUserTabLabelWinback, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…emiumUserTabLabelWinback)");
        return new C16723q(C2752R.C2753drawable.ic_premium_user_tab_label_offer, mo13768b, i);
    }

    /* renamed from: b */
    public final C16723q m17071b() {
        String mo13768b = this.f46901c.mo13768b(C2752R.string.PremiumUserTabLabelPremiumRequired, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…rTabLabelPremiumRequired)");
        return new C16723q(C2752R.C2753drawable.ic_premium_user_tab_label_lock, mo13768b, 2130970017);
    }

    /* renamed from: c */
    public final C16723q m17070c() {
        String mo13768b = this.f46901c.mo13768b(C2752R.string.PremiumUserTabLabelUnlocked, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…miumUserTabLabelUnlocked)");
        return new C16723q(C2752R.C2753drawable.ic_premium_user_tab_label_check, mo13768b, 2130969964);
    }
}
