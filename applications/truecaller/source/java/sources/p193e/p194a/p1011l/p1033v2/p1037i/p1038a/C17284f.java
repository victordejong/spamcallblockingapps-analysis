package p193e.p194a.p1011l.p1033v2.p1037i.p1038a;

import com.truecaller.C2752R;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1012a.AbstractC16571e0;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1025p2.AbstractC17180s1;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p417k.C8502h;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.u;
/* renamed from: e.a.l.v2.i.a.f */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/i/a/f.class */
public final class C17284f {

    /* renamed from: a */
    public final AbstractC19223c0 f48496a;

    /* renamed from: b */
    public final AbstractC16571e0 f48497b;

    /* renamed from: c */
    public final C20592g f48498c;

    /* renamed from: e.a.l.v2.i.a.f$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/v2/i/a/f$a.class */
    public static final class C17285a {

        /* renamed from: a */
        public final boolean f48499a;

        /* renamed from: b */
        public final boolean f48500b;

        public C17285a(boolean z, boolean z2) {
            this.f48499a = z;
            this.f48500b = z2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C17285a)) {
                    return false;
                }
                C17285a c17285a = (C17285a) obj;
                return this.f48499a == c17285a.f48499a && this.f48500b == c17285a.f48500b;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f48499a;
            int i = 1;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            boolean z3 = this.f48500b;
            if (!z3) {
                i = z3;
            }
            return ((z2 ? 1 : 0) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("DisclaimerSpec(excludeFreeTrial=");
            m8728C.append(this.f48499a);
            m8728C.append(", excludeIntroductory=");
            return C22128a.m8590o(m8728C, this.f48500b, ")");
        }
    }

    @Inject
    public C17284f(AbstractC19223c0 abstractC19223c0, AbstractC16571e0 abstractC16571e0, C20592g c20592g) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC16571e0, "priceFormatter");
        l.e(c20592g, "featuresRegistry");
        this.f48496a = abstractC19223c0;
        this.f48497b = abstractC16571e0;
        this.f48498c = c20592g;
    }

    /* renamed from: c */
    public static List m16280c(C17284f c17284f, AbstractC17180s1.C17182b c17182b, boolean z, boolean z2, boolean z3, boolean z4, int i) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        if ((i & 8) != 0) {
            z3 = false;
        }
        if ((i & 16) != 0) {
            z4 = false;
        }
        Objects.requireNonNull(c17284f);
        l.e(c17182b, "details");
        C16993f c16993f = c17182b.f48205e;
        C16993f c16993f2 = c17182b.f48204d;
        C16993f c16993f3 = c17182b.f48206f;
        C16993f c16993f4 = c17182b.f48207g;
        C16993f c16993f5 = c17182b.f48208h;
        if (z4) {
            c16993f5 = null;
        }
        C16993f c16993f6 = c17182b.f48209i;
        if (!z3) {
            c16993f6 = null;
        }
        C16993f c16993f7 = c17182b.f48210j;
        if (z) {
            c16993f7 = null;
        }
        C16993f c16993f8 = c17182b.f48211k;
        if (z2) {
            c16993f8 = null;
        }
        C16993f c16993f9 = c17182b.f48213m;
        if (z2) {
            c16993f9 = null;
        }
        C16993f c16993f10 = c17182b.f48215o;
        if (z2) {
            c16993f10 = null;
        }
        C16993f c16993f11 = !z2 ? c16993f3 : null;
        C16993f c16993f12 = c17182b.f48212l;
        C16993f c16993f13 = null;
        if (!z2) {
            c16993f13 = c16993f12;
        }
        return i.F0(i.z(i.d0(new C16993f[]{c16993f, c16993f2, c16993f3, c16993f4, c16993f5, c16993f6, c16993f7, c16993f8, c16993f9, c16993f10, c16993f11, c16993f13})), new C17283e());
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x019c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m16282a(java.util.List<p193e.p194a.p1011l.p1023n2.C16993f> r9, p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17284f.C17285a r10) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17284f.m16282a(java.util.List, e.a.l.v2.i.a.f$a):java.lang.String");
    }

    /* renamed from: b */
    public final List<String> m16281b(List<C16993f> list) {
        String str;
        l.e(list, "subscriptions");
        ArrayList arrayList = new ArrayList();
        for (C16993f c16993f : list) {
            if (c16993f.f47671j == null || c16993f.f47670i == 0) {
                str = null;
            } else {
                String m16277f = m16277f(c16993f, this.f48497b.mo17231a(c16993f.f47665d, c16993f.f47668g));
                String m13816A = C19231g0.m13816A(this.f48496a.mo13759k(m16278e(c16993f), m16279d(c16993f), new Object[0]), C8502h.f26287b);
                l.d(m13816A, "StringUtils.capitalizeFi…ocale()\n                )");
                String m16277f2 = m16277f(c16993f, c16993f.f47664c);
                int ordinal = c16993f.f47672k.ordinal();
                str = ordinal != 2 ? ordinal != 3 ? this.f48496a.mo13768b(2131887306, m16277f, Integer.valueOf(c16993f.f47670i), m13816A, m16277f2) : this.f48496a.mo13768b(2131887307, c16993f.f47667f, Integer.valueOf(c16993f.f47670i * 6), m13816A, m16277f2) : this.f48496a.mo13768b(2131887307, c16993f.f47667f, Integer.valueOf(c16993f.f47670i * 3), m13816A, m16277f2);
            }
            String mo13768b = (str == null || !this.f48498c.m10965g0().isEnabled()) ? null : this.f48496a.mo13768b(2131887351, new Object[0]);
            u uVar = c16993f.f47669h;
            String str2 = null;
            if (uVar != null) {
                str2 = null;
                if (uVar.s() > 0) {
                    str2 = this.f48496a.mo13759k(2131755041, uVar.s(), Integer.valueOf(uVar.s()));
                }
            }
            String m13814C = C19231g0.m13814C(System.getProperty("line.separator"), i.V(new String[]{str, str2, mo13768b}));
            l.d(m13814C, "StringUtils.combine(\n   …laimer)\n                )");
            arrayList.add(m13814C);
        }
        return arrayList;
    }

    /* renamed from: d */
    public final int m16279d(C16993f c16993f) {
        int ordinal = c16993f.f47672k.ordinal();
        int i = 3;
        if (ordinal == 2) {
            i = 6;
        } else if (ordinal != 3) {
            i = c16993f.f47670i;
        }
        return i;
    }

    /* renamed from: e */
    public final int m16278e(C16993f c16993f) {
        int ordinal = c16993f.f47672k.ordinal();
        return (ordinal == 4 || ordinal == 6) ? 2131755055 : 2131755053;
    }

    /* renamed from: f */
    public final String m16277f(C16993f c16993f, String str) {
        String str2;
        int ordinal = c16993f.f47672k.ordinal();
        if (ordinal == 2) {
            str2 = this.f48496a.mo13768b(C2752R.string.PremiumOfferPricePerMonthOverVariablePeriod, str, 3);
            l.d(str2, "resourceProvider.getStri…ONTHS_QUARTERLY\n        )");
        } else if (ordinal == 3) {
            str2 = this.f48496a.mo13768b(C2752R.string.PremiumOfferPricePerMonthOverVariablePeriod, str, 6);
            l.d(str2, "resourceProvider.getStri…THS_HALF_YEARLY\n        )");
        } else if (ordinal == 4 || ordinal == 6) {
            str2 = this.f48496a.mo13768b(C2752R.string.PremiumYearlyOfferPricePerYear, str);
            l.d(str2, "resourceProvider.getStri…OfferPricePerYear, price)");
        } else {
            str2 = this.f48496a.mo13768b(2131887312, str);
            l.d(str2, "resourceProvider.getStri…fferPricePerMonth, price)");
        }
        return str2;
    }
}
