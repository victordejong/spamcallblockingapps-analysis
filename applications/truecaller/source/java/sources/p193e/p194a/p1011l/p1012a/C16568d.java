package p193e.p194a.p1011l.p1012a;

import com.truecaller.premium.C4334R;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17279a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p372b0.p417k.C8502h;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.u;
/* renamed from: e.a.l.a.d */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/d.class */
public final class C16568d implements AbstractC16566c {

    /* renamed from: a */
    public final AbstractC19223c0 f46566a;

    @Inject
    public C16568d(AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC19223c0, "resourceProvider");
        this.f46566a = abstractC19223c0;
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16566c
    /* renamed from: a */
    public C17279a mo17240a(C16993f c16993f, boolean z, int i) {
        String str;
        String str2;
        String str3;
        String str4;
        l.e(c16993f, "subscription");
        String str5 = c16993f.f47667f.length() > 0 ? c16993f.f47664c : null;
        String mo13768b = z ? this.f46566a.mo13768b(C4334R.string.PremiumSubscriptionProrationNote, new Object[0]) : null;
        if (!(c16993f.f47667f.length() > 0) || c16993f.f47671j == null) {
            str3 = null;
            str = null;
            str2 = null;
        } else {
            AbstractC19223c0 abstractC19223c0 = this.f46566a;
            int ordinal = c16993f.f47672k.ordinal();
            int i2 = (ordinal == 4 || ordinal == 6) ? C4334R.plurals.StrPluralYear : C4334R.plurals.StrPluralMonth;
            int ordinal2 = c16993f.f47672k.ordinal();
            String m13816A = C19231g0.m13816A(abstractC19223c0.mo13759k(i2, ordinal2 != 2 ? ordinal2 != 3 ? c16993f.f47670i : 3 : 6, new Object[0]), C8502h.f26287b);
            l.d(m13816A, "StringUtils.capitalizeFi…ocale()\n                )");
            str3 = this.f46566a.mo13768b(C4334R.string.PremiumDiscountPercentageOff, Integer.valueOf(100 - ((int) ((c16993f.f47668g / c16993f.f47666e) * 100))));
            AbstractC19223c0 abstractC19223c02 = this.f46566a;
            int i3 = C4334R.string.PremiumUserTabCardGoldGiftButtonSubtext;
            int ordinal3 = c16993f.f47672k.ordinal();
            str = abstractC19223c02.mo13768b(i3, Integer.valueOf(ordinal3 != 2 ? ordinal3 != 3 ? c16993f.f47670i : c16993f.f47670i * 6 : c16993f.f47670i * 3), m13816A);
            str2 = this.f46566a.mo13768b(C4334R.string.PremiumIntroductoryDisclaimer, new Object[0]);
        }
        u uVar = c16993f.f47669h;
        List V = i.V(new String[]{mo13768b, str, str2, (uVar == null || uVar.s() <= 0) ? null : this.f46566a.mo13759k(C4334R.plurals.PremiumButtonsFreeTrialLabel, uVar.s(), Integer.valueOf(uVar.s()))});
        String m13814C = ((ArrayList) V).isEmpty() ^ true ? C19231g0.m13814C(", ", V) : null;
        String m16657b = c16993f.m16657b();
        int ordinal4 = c16993f.f47672k.ordinal();
        if (ordinal4 == 2) {
            str4 = this.f46566a.mo13768b(C4334R.string.PremiumAbbreviatedOfferPriceOverQuarterly, m16657b, 3);
            l.d(str4, "resourceProvider.getStri…ONTHS_QUARTERLY\n        )");
        } else if (ordinal4 == 3) {
            str4 = this.f46566a.mo13768b(C4334R.string.PremiumAbbreviatedOfferPriceOverHalfYearly, m16657b, 6);
            l.d(str4, "resourceProvider.getStri…THS_HALF_YEARLY\n        )");
        } else if (ordinal4 == 4 || ordinal4 == 5 || ordinal4 == 6) {
            str4 = this.f46566a.mo13768b(C4334R.string.PremiumYearlySubscriptionUpgradeTwoLinesSubtitle, m16657b);
            l.d(str4, "resourceProvider.getStri…eTwoLinesSubtitle, price)");
        } else {
            str4 = this.f46566a.mo13768b(C4334R.string.PremiumMonthlyOfferPricePerMonth, m16657b);
            l.d(str4, "resourceProvider.getStri…fferPricePerMonth, price)");
        }
        return new C17279a(str5, str4, str3, m13814C, i);
    }
}
