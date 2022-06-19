package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.data.ProductKind;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1012a.C16590l0;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.p2.p */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/p.class */
public final class C17146p {

    /* renamed from: a */
    public final List<C17147a> f48125a;

    /* renamed from: b */
    public final List<C17147a> f48126b;

    /* renamed from: c */
    public String f48127c;

    /* renamed from: d */
    public String f48128d;

    /* renamed from: e */
    public final C16590l0 f48129e;

    /* renamed from: e.a.l.p2.p$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/p$a.class */
    public static final class C17147a {

        /* renamed from: a */
        public final String f48130a;

        /* renamed from: b */
        public final boolean f48131b;

        public C17147a(String str, boolean z) {
            l.e(str, "kind");
            this.f48130a = str;
            this.f48131b = z;
        }

        public /* synthetic */ C17147a(String str, boolean z, int i) {
            this(str, (i & 2) != 0 ? false : z);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C17147a)) {
                    return false;
                }
                C17147a c17147a = (C17147a) obj;
                return l.a(this.f48130a, c17147a.f48130a) && this.f48131b == c17147a.f48131b;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f48130a;
            int hashCode = str != null ? str.hashCode() : 0;
            boolean z = this.f48131b;
            int i = z ? 1 : 0;
            if (z) {
                i = 1;
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Condition(kind=");
            m8728C.append(this.f48130a);
            m8728C.append(", isWinback=");
            return C22128a.m8590o(m8728C, this.f48131b, ")");
        }
    }

    public C17146p(C16590l0 c16590l0) {
        l.e(c16590l0, "welcomeOfferUtils");
        this.f48129e = c16590l0;
        C17147a c17147a = new C17147a(ProductKind.SUBSCRIPTION_WELCOME_OFFER_YEARLY.getKind(), false, 2);
        ProductKind productKind = ProductKind.SUBSCRIPTION_YEARLY;
        this.f48125a = i.T(new C17147a[]{c17147a, new C17147a(productKind.getKind(), true), new C17147a(productKind.getKind(), false, 2), new C17147a(ProductKind.SUBSCRIPTION_HALFYEARLY.getKind(), false, 2), new C17147a(ProductKind.SUBSCRIPTION_QUARTERLY.getKind(), false, 2), new C17147a(ProductKind.SUBSCRIPTION_MONTHLY.getKind(), false, 2)});
        ProductKind productKind2 = ProductKind.SUBSCRIPTION_GOLD;
        this.f48126b = i.T(new C17147a[]{new C17147a(productKind2.getKind(), true), new C17147a(productKind2.getKind(), false, 2)});
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0085, code lost:
        if ((r0 != null ? r0.m16483c() : null) != null) goto L22;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m16478a(java.util.List<p193e.p194a.p1011l.p1025p2.C17125k1> r5, p193e.p194a.p1011l.p1025p2.C17146p.C17147a r6) {
        /*
            r4 = this;
            r0 = r5
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L7:
            r0 = r7
            boolean r0 = r0.hasNext()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L99
            r0 = r7
            java.lang.Object r0 = r0.next()
            r10 = r0
            r0 = r10
            e.a.l.p2.k1 r0 = (p193e.p194a.p1011l.p1025p2.C17125k1) r0
            r5 = r0
            r0 = r6
            java.lang.String r0 = r0.f48130a
            r11 = r0
            r0 = r5
            java.lang.String r0 = r0.m16509b()
            r12 = r0
            r0 = 1
            r13 = r0
            r0 = r11
            r1 = r12
            r2 = 1
            boolean r0 = s1.f0.r.n(r0, r1, r2)
            if (r0 == 0) goto L8b
            r0 = r6
            boolean r0 = r0.f48131b
            r1 = r5
            boolean r1 = r1.m16503h()
            if (r0 != r1) goto L8b
            r0 = r6
            java.lang.String r0 = r0.f48130a
            com.truecaller.premium.data.ProductKind r1 = com.truecaller.premium.data.ProductKind.SUBSCRIPTION_WELCOME_OFFER_YEARLY
            java.lang.String r1 = r1.getKind()
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto L69
            r0 = r4
            e.a.l.a.l0 r0 = r0.f48129e
            w3.b.a.b r0 = r0.m17213a()
            boolean r0 = r0.g()
            r8 = r0
            goto L6c
        L69:
            r0 = 1
            r8 = r0
        L6c:
            r0 = r8
            if (r0 == 0) goto L8b
            r0 = r5
            e.a.l.p2.n1 r0 = r0.m16505f()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L82
            r0 = r5
            java.lang.String r0 = r0.m16483c()
            r5 = r0
            goto L84
        L82:
            r0 = 0
            r5 = r0
        L84:
            r0 = r5
            if (r0 == 0) goto L8b
            goto L8e
        L8b:
            r0 = 0
            r13 = r0
        L8e:
            r0 = r13
            if (r0 == 0) goto L7
            r0 = r10
            r5 = r0
            goto L9b
        L99:
            r0 = 0
            r5 = r0
        L9b:
            r0 = r5
            e.a.l.p2.k1 r0 = (p193e.p194a.p1011l.p1025p2.C17125k1) r0
            r6 = r0
            r0 = r9
            r5 = r0
            r0 = r6
            if (r0 == 0) goto Lb8
            r0 = r6
            e.a.l.p2.n1 r0 = r0.m16505f()
            r6 = r0
            r0 = r9
            r5 = r0
            r0 = r6
            if (r0 == 0) goto Lb8
            r0 = r6
            java.lang.String r0 = r0.m16483c()
            r5 = r0
        Lb8:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17146p.m16478a(java.util.List, e.a.l.p2.p$a):java.lang.String");
    }
}
