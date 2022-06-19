package p193e.p194a.p1011l.p1033v2.p1037i.p1038a;

import com.truecaller.C2752R;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1012a.AbstractC16571e0;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1025p2.AbstractC17180s1;
import p193e.p194a.p1011l.p1030s2.AbstractC17229a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p372b0.p417k.C8502h;
import s1.i;
import s1.z.c.l;
import w3.b.a.u;
/* renamed from: e.a.l.v2.i.a.c */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/i/a/c.class */
public final class C17281c {

    /* renamed from: a */
    public final AbstractC17229a f48487a;

    /* renamed from: b */
    public final AbstractC19233h0 f48488b;

    /* renamed from: c */
    public final AbstractC16571e0 f48489c;

    @Inject
    public C17281c(AbstractC17229a abstractC17229a, AbstractC19233h0 abstractC19233h0, AbstractC16571e0 abstractC16571e0) {
        l.e(abstractC17229a, "firebasePersonalisationManager");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC16571e0, "priceFormatter");
        this.f48487a = abstractC17229a;
        this.f48488b = abstractC19233h0;
        this.f48489c = abstractC16571e0;
    }

    /* renamed from: g */
    public static /* synthetic */ C17280b m16286g(C17281c c17281c, C16993f c16993f, C16993f c16993f2, AbstractC17180s1.C17182b c17182b, boolean z, boolean z2, int i) {
        if ((i & 16) != 0) {
            z2 = false;
        }
        return c17281c.m16287f(c16993f, c16993f2, c17182b, z, z2);
    }

    /* renamed from: a */
    public final C17280b m16292a(C16993f c16993f, C16993f c16993f2) {
        C17280b c17280b = null;
        if (c16993f != null) {
            int m16283j = m16283j(c16993f, c16993f2);
            String m16288e = m16288e(c16993f);
            boolean z = true;
            String mo13768b = this.f48488b.mo13768b(C2752R.string.PremiumOfferSavingsHeading, Integer.valueOf(m16283j));
            if (m16283j <= 0) {
                z = false;
            }
            if (!z) {
                mo13768b = null;
            }
            c17280b = new C17280b(m16288e, mo13768b, null, Integer.valueOf(this.f48488b.mo13758l(2130970240)), 2131236712, false, null, m16290c(c16993f), 100);
        }
        return c17280b;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ed  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b m16291b(p193e.p194a.p1011l.p1023n2.C16993f r13, boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17281c.m16291b(e.a.l.n2.f, boolean, boolean):e.a.l.v2.i.a.b");
    }

    /* renamed from: c */
    public final String m16290c(C16993f c16993f) {
        String str;
        if (c16993f.f47671j == null || c16993f.f47670i == 0) {
            str = null;
        } else {
            int ordinal = c16993f.f47672k.ordinal();
            if (ordinal == 2) {
                str = this.f48488b.mo13768b(C2752R.string.PremiumVariablePeriodIntroductoryNote, c16993f.f47664c, 3);
                l.d(str, "resourceProvider.getStri…URATION_MONTHS_QUARTERLY)");
            } else if (ordinal == 3) {
                str = this.f48488b.mo13768b(C2752R.string.PremiumVariablePeriodIntroductoryNote, c16993f.f47664c, 6);
                l.d(str, "resourceProvider.getStri…ATION_MONTHS_HALF_YEARLY)");
            } else if (ordinal == 4 || ordinal == 6) {
                str = this.f48488b.mo13768b(C2752R.string.PremiumYearlyIntroductoryNote, c16993f.f47664c);
                l.d(str, "resourceProvider.getStri…yIntroductoryNote, price)");
            } else {
                str = this.f48488b.mo13768b(2131887310, c16993f.f47664c);
                l.d(str, "resourceProvider.getStri…yIntroductoryNote, price)");
            }
        }
        return str;
    }

    /* renamed from: d */
    public final C17280b m16289d(C16993f c16993f, C16993f c16993f2) {
        C17280b c17280b = null;
        if (c16993f != null) {
            int m16283j = m16283j(c16993f, c16993f2);
            String m16288e = m16288e(c16993f);
            boolean z = true;
            String mo13768b = this.f48488b.mo13768b(C2752R.string.PremiumOfferSavingsHeading, Integer.valueOf(m16283j));
            if (m16283j <= 0) {
                z = false;
            }
            if (!z) {
                mo13768b = null;
            }
            c17280b = new C17280b(m16288e, mo13768b, null, Integer.valueOf(this.f48488b.mo13758l(2130970240)), 2131236712, false, null, m16290c(c16993f), 100);
        }
        return c17280b;
    }

    /* renamed from: e */
    public final String m16288e(C16993f c16993f) {
        String str;
        u uVar = c16993f.f47671j;
        if (uVar == null || c16993f.f47670i == 0) {
            String mo13768b = this.f48488b.mo13768b(m16284i(c16993f), c16993f.m16657b());
            l.d(mo13768b, "resourceProvider.getStri…Res(), sub.obtainPrice())");
            return mo13768b;
        }
        AbstractC19233h0 abstractC19233h0 = this.f48488b;
        int i = uVar.x() > 0 ? 2131755055 : uVar.v() > 0 ? 2131755053 : uVar.w() > 0 ? 2131755054 : 2131755051;
        int ordinal = c16993f.f47672k.ordinal();
        String m13816A = C19231g0.m13816A(abstractC19233h0.mo13759k(i, ordinal != 2 ? ordinal != 3 ? c16993f.f47670i : 6 : 3, new Object[0]), C8502h.f26287b);
        l.d(m13816A, "StringUtils.capitalizeFi….getAppLocale()\n        )");
        AbstractC19233h0 abstractC19233h02 = this.f48488b;
        int ordinal2 = c16993f.f47672k.ordinal();
        String m13816A2 = C19231g0.m13816A(abstractC19233h02.mo13759k((ordinal2 == 4 || ordinal2 == 6) ? 2131755055 : 2131755053, 1, new Object[0]), C8502h.f26287b);
        l.d(m13816A2, "StringUtils.capitalizeFi….getAppLocale()\n        )");
        int ordinal3 = c16993f.f47672k.ordinal();
        if (ordinal3 == 2) {
            str = this.f48488b.mo13768b(C2752R.string.PremiumIntroductoryButtonForFirstPeriod, c16993f.f47667f, Integer.valueOf(c16993f.f47670i * 3), m13816A);
            l.d(str, "resourceProvider.getStri…introPeriod\n            )");
        } else if (ordinal3 != 3) {
            str = this.f48488b.mo13768b(C2752R.string.PremiumIntroductoryButtonV2, c16993f.f47667f, m13816A2, Integer.valueOf(c16993f.f47670i), m13816A);
            l.d(str, "resourceProvider.getStri…introPeriod\n            )");
        } else {
            str = this.f48488b.mo13768b(C2752R.string.PremiumIntroductoryButtonForFirstPeriod, c16993f.f47667f, Integer.valueOf(c16993f.f47670i * 6), m13816A);
            l.d(str, "resourceProvider.getStri…introPeriod\n            )");
        }
        return str;
    }

    /* renamed from: f */
    public final C17280b m16287f(C16993f c16993f, C16993f c16993f2, AbstractC17180s1.C17182b c17182b, boolean z, boolean z2) {
        C17280b c17280b;
        l.e(c17182b, "dataFetched");
        C16993f c16993f3 = c17182b.f48221u;
        boolean mo16357c = this.f48487a.mo16357c();
        Integer num = null;
        boolean z3 = false;
        if (c17182b.f48203c && !c17182b.f48202b) {
            String mo13768b = this.f48488b.mo13768b(C2752R.string.PremiumUpgradeToGoldTitle, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…remiumUpgradeToGoldTitle)");
            c17280b = new C17280b(mo13768b, null, this.f48488b.mo13768b(C2752R.string.PremiumUpgradeToGoldSubTitle, new Object[0]), Integer.valueOf(this.f48488b.mo13758l(2130970090)), null, true, null, null, 210);
        } else if (c16993f == null) {
            c17280b = null;
        } else if (c17182b.f48202b) {
            if (c16993f3 != null) {
                c16993f2 = c16993f3;
            }
            int m16283j = m16283j(c16993f, c16993f2);
            String mo13768b2 = z2 ? this.f48488b.mo13768b(C2752R.string.PremiumYearlySubscriptionUpgradeTwoLinesTitle, new Object[0]) : this.f48488b.mo13768b(C2752R.string.PremiumYearlySubscriptionUpgrade, c16993f.m16657b());
            l.d(mo13768b2, "when {\n                t…ainPrice())\n            }");
            String mo13768b3 = z2 ? this.f48488b.mo13768b(2131887457, c16993f.m16657b()) : null;
            String mo13768b4 = this.f48488b.mo13768b(C2752R.string.PremiumOfferSavingsHeading, Integer.valueOf(m16283j));
            if (m16283j > 0) {
                z3 = true;
            }
            if (!z3) {
                mo13768b4 = null;
            }
            c17280b = new C17280b(mo13768b2, mo13768b4, mo13768b3, Integer.valueOf(this.f48488b.mo13769a(2131101221)), 2131236711, false, null, null, 224);
        } else if (mo16357c) {
            String mo13768b5 = this.f48488b.mo13768b(C2752R.string.PremiumYearlySubscription, c16993f.m16657b());
            l.d(mo13768b5, "resourceProvider.getStri…bscription.obtainPrice())");
            c17280b = new C17280b(mo13768b5, null, null, Integer.valueOf(this.f48488b.mo13758l(2130970240)), 2131236712, false, null, null, 230);
        } else {
            int m16283j2 = m16283j(c16993f, c16993f2);
            String m16288e = m16288e(c16993f);
            String mo13768b6 = this.f48488b.mo13768b(C2752R.string.PremiumOfferSavingsHeading, Integer.valueOf(m16283j2));
            boolean z4 = false;
            if (m16283j2 > 0) {
                z4 = true;
            }
            if (!z4) {
                mo13768b6 = null;
            }
            Integer valueOf = z ? Integer.valueOf(this.f48488b.mo13769a(2131101221)) : null;
            if (z) {
                num = 2131236711;
            }
            c17280b = new C17280b(m16288e, mo13768b6, null, valueOf, num, false, null, m16290c(c16993f), 100);
        }
        return c17280b;
    }

    /* renamed from: h */
    public final int m16285h(C16993f c16993f) {
        int i;
        switch (c16993f.f47672k.ordinal()) {
            case 0:
            case 1:
            case 9:
            case 12:
                i = 1;
                break;
            case 2:
            case 10:
                i = 3;
                break;
            case 3:
            case 11:
                i = 6;
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                i = 12;
                break;
            default:
                throw new i();
        }
        return i;
    }

    /* renamed from: i */
    public final int m16284i(C16993f c16993f) {
        int ordinal = c16993f.f47672k.ordinal();
        return ordinal != 2 ? ordinal != 3 ? (ordinal == 4 || ordinal == 6) ? 2131887455 : 2131887313 : 2131887294 : 2131887348;
    }

    /* renamed from: j */
    public final int m16283j(C16993f c16993f, C16993f c16993f2) {
        if (c16993f2 == null) {
            return 0;
        }
        return 100 - ((int) (((c16993f.m16656c() / m16285h(c16993f)) / (c16993f2.m16656c() / m16285h(c16993f2))) * 100));
    }
}
