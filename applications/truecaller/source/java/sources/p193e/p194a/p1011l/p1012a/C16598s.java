package p193e.p194a.p1011l.p1012a;

import com.truecaller.C2752R;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1025p2.AbstractC17180s1;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.z.c.l;
/* renamed from: e.a.l.a.s */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/s.class */
public final class C16598s {

    /* renamed from: a */
    public final AbstractC8621z f46630a;

    /* renamed from: b */
    public final AbstractC19223c0 f46631b;

    @Inject
    public C16598s(AbstractC8621z abstractC8621z, AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(abstractC19223c0, "resourceProvider");
        this.f46630a = abstractC8621z;
        this.f46631b = abstractC19223c0;
    }

    /* renamed from: a */
    public final C17280b m17203a(AbstractC17180s1.C17182b c17182b) {
        C17280b c17280b;
        l.e(c17182b, "dataFetched");
        C16993f c16993f = c17182b.f48211k;
        if (c16993f == null || !l.a("KE", this.f46630a.mo28176o())) {
            c17280b = null;
        } else {
            String mo13768b = this.f46631b.mo13768b(C2752R.string.PremiumConsumablePricing, c16993f.m16657b());
            l.d(mo13768b, "resourceProvider.getStri…Consumable.obtainPrice())");
            c17280b = new C17280b(mo13768b, null, null, null, null, false, null, null, 254);
        }
        return c17280b;
    }
}
