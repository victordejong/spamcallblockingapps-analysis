package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.billing.Receipt;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.l.p2.p1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/p1.class */
public abstract class AbstractC17151p1 {

    /* renamed from: e.a.l.p2.p1$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/p1$a.class */
    public static final class C17152a extends AbstractC17151p1 {

        /* renamed from: a */
        public static final C17152a f48141a = new C17152a();

        public C17152a() {
            super(null);
        }
    }

    /* renamed from: e.a.l.p2.p1$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/p1$b.class */
    public static final class C17153b extends AbstractC17151p1 {

        /* renamed from: a */
        public final Receipt f48142a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17153b(Receipt receipt) {
            super(null);
            l.e(receipt, "receipt");
            this.f48142a = receipt;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C17153b) && l.a(this.f48142a, ((C17153b) obj).f48142a);
            }
            return true;
        }

        public int hashCode() {
            Receipt receipt = this.f48142a;
            return receipt != null ? receipt.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MovePremiumToAnotherNumber(receipt=");
            m8728C.append(this.f48142a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l.p2.p1$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/p1$c.class */
    public static final class C17154c extends AbstractC17151p1 {

        /* renamed from: a */
        public static final C17154c f48143a = new C17154c();

        public C17154c() {
            super(null);
        }
    }

    /* renamed from: e.a.l.p2.p1$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/p1$d.class */
    public static final class C17155d extends AbstractC17151p1 {

        /* renamed from: a */
        public final boolean f48144a;

        public C17155d() {
            super(null);
            this.f48144a = false;
        }

        public C17155d(boolean z) {
            super(null);
            this.f48144a = z;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17155d(boolean z, int i) {
            super(null);
            z = (i & 1) != 0 ? false : z;
            this.f48144a = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C17155d) && this.f48144a == ((C17155d) obj).f48144a;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f48144a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("PendingPurchase(isWebPayment="), this.f48144a, ")");
        }
    }

    /* renamed from: e.a.l.p2.p1$e */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/p1$e.class */
    public static final class C17156e extends AbstractC17151p1 {

        /* renamed from: a */
        public static final C17156e f48145a = new C17156e();

        public C17156e() {
            super(null);
        }
    }

    /* renamed from: e.a.l.p2.p1$f */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/p1$f.class */
    public static final class C17157f extends AbstractC17151p1 {

        /* renamed from: a */
        public final int f48146a;

        /* renamed from: b */
        public final String f48147b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17157f(int i, String str) {
            super(null);
            l.e(str, "receipt");
            this.f48146a = i;
            this.f48147b = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C17157f)) {
                    return false;
                }
                C17157f c17157f = (C17157f) obj;
                return this.f48146a == c17157f.f48146a && l.a(this.f48147b, c17157f.f48147b);
            }
            return true;
        }

        public int hashCode() {
            int i = this.f48146a;
            String str = this.f48147b;
            return (i * 31) + (str != null ? str.hashCode() : 0);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ReceiptVerificationError(status=");
            m8728C.append(this.f48146a);
            m8728C.append(", receipt=");
            return C22128a.m8618h(m8728C, this.f48147b, ")");
        }
    }

    /* renamed from: e.a.l.p2.p1$g */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/p1$g.class */
    public static final class C17158g extends AbstractC17151p1 {

        /* renamed from: a */
        public final String f48148a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17158g(String str) {
            super(null);
            l.e(str, "sku");
            this.f48148a = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C17158g) && l.a(this.f48148a, ((C17158g) obj).f48148a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f48148a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Success(sku="), this.f48148a, ")");
        }
    }

    /* renamed from: e.a.l.p2.p1$h */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/p1$h.class */
    public static final class C17159h extends AbstractC17151p1 {

        /* renamed from: a */
        public static final C17159h f48149a = new C17159h();

        public C17159h() {
            super(null);
        }
    }

    /* renamed from: e.a.l.p2.p1$i */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/p1$i.class */
    public static final class C17160i extends AbstractC17151p1 {
    }

    public AbstractC17151p1() {
    }

    public AbstractC17151p1(f fVar) {
    }
}
