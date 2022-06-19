package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.data.PremiumScope;
import com.truecaller.premium.data.ProductKind;
import com.truecaller.premium.provider.Store;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.p2.x */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/x.class */
public final class C17203x {

    /* renamed from: a */
    public final long f48281a;

    /* renamed from: b */
    public final long f48282b;

    /* renamed from: c */
    public final long f48283c;

    /* renamed from: d */
    public final int f48284d;

    /* renamed from: e */
    public final Boolean f48285e;

    /* renamed from: f */
    public final String f48286f;

    /* renamed from: g */
    public final String f48287g;

    /* renamed from: h */
    public final ProductKind f48288h;

    /* renamed from: i */
    public final PremiumScope f48289i;

    /* renamed from: j */
    public final boolean f48290j;

    /* renamed from: k */
    public final boolean f48291k;

    /* renamed from: l */
    public final boolean f48292l;

    /* renamed from: m */
    public final Store f48293m;

    public C17203x() {
        this(0L, 0L, 0L, 0, null, null, null, null, null, false, false, false, null, 8191);
    }

    public C17203x(long j, long j2, long j3, int i, Boolean bool, String str, String str2, ProductKind productKind, PremiumScope premiumScope, boolean z, boolean z2, boolean z3, Store store) {
        l.e(str2, "level");
        l.e(productKind, "kind");
        l.e(premiumScope, "scope");
        l.e(store, "paymentProvider");
        this.f48281a = j;
        this.f48282b = j2;
        this.f48283c = j3;
        this.f48284d = i;
        this.f48285e = bool;
        this.f48286f = str;
        this.f48287g = str2;
        this.f48288h = productKind;
        this.f48289i = premiumScope;
        this.f48290j = z;
        this.f48291k = z2;
        this.f48292l = z3;
        this.f48293m = store;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    public /* synthetic */ C17203x(long j, long j2, long j3, int i, Boolean bool, String str, String str2, ProductKind productKind, PremiumScope premiumScope, boolean z, boolean z2, boolean z3, Store store, int i2) {
        this((i2 & 1) != 0 ? 0 : j, (i2 & 2) != 0 ? 0 : j2, (i2 & 4) != 0 ? 0 : j3, (i2 & 8) != 0 ? 0 : i, null, null, (i2 & 64) != 0 ? "none" : null, (i2 & 128) != 0 ? ProductKind.NONE : null, (i2 & 256) != 0 ? PremiumScope.NONE : null, (i2 & 512) != 0 ? false : z, (i2 & 1024) != 0 ? false : z2, (i2 & 2048) != 0 ? true : z3, (i2 & 4096) != 0 ? Store.NONE : null);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17203x)) {
                return false;
            }
            C17203x c17203x = (C17203x) obj;
            return this.f48281a == c17203x.f48281a && this.f48282b == c17203x.f48282b && this.f48283c == c17203x.f48283c && this.f48284d == c17203x.f48284d && l.a(this.f48285e, c17203x.f48285e) && l.a(this.f48286f, c17203x.f48286f) && l.a(this.f48287g, c17203x.f48287g) && l.a(this.f48288h, c17203x.f48288h) && l.a(this.f48289i, c17203x.f48289i) && this.f48290j == c17203x.f48290j && this.f48291k == c17203x.f48291k && this.f48292l == c17203x.f48292l && l.a(this.f48293m, c17203x.f48293m);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f48281a);
        int m34274a2 = C4876d.m34274a(this.f48282b);
        int m34274a3 = C4876d.m34274a(this.f48283c);
        int i = this.f48284d;
        Boolean bool = this.f48285e;
        int i2 = 0;
        int hashCode = bool != null ? bool.hashCode() : 0;
        String str = this.f48286f;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f48287g;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        ProductKind productKind = this.f48288h;
        int hashCode4 = productKind != null ? productKind.hashCode() : 0;
        PremiumScope premiumScope = this.f48289i;
        int hashCode5 = premiumScope != null ? premiumScope.hashCode() : 0;
        boolean z = this.f48290j;
        int i3 = 1;
        int i4 = z ? 1 : 0;
        if (z) {
            i4 = 1;
        }
        boolean z2 = this.f48291k;
        int i5 = z2 ? 1 : 0;
        if (z2) {
            i5 = 1;
        }
        boolean z3 = this.f48292l;
        if (!z3) {
            i3 = z3 ? 1 : 0;
        }
        Store store = this.f48293m;
        if (store != null) {
            i2 = store.hashCode();
        }
        return (((((((((((((((((((((((m34274a * 31) + m34274a2) * 31) + m34274a3) * 31) + i) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i4) * 31) + i5) * 31) + i3) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Premium(expiresTimestamp=");
        m8728C.append(this.f48281a);
        m8728C.append(", startTimestamp=");
        m8728C.append(this.f48282b);
        m8728C.append(", gracePeriodExpiresTimestamp=");
        m8728C.append(this.f48283c);
        m8728C.append(", type=");
        m8728C.append(this.f48284d);
        m8728C.append(", isFreeTrialActive=");
        m8728C.append(this.f48285e);
        m8728C.append(", source=");
        m8728C.append(this.f48286f);
        m8728C.append(", level=");
        m8728C.append(this.f48287g);
        m8728C.append(", kind=");
        m8728C.append(this.f48288h);
        m8728C.append(", scope=");
        m8728C.append(this.f48289i);
        m8728C.append(", isExpired=");
        m8728C.append(this.f48290j);
        m8728C.append(", isInGracePeriod=");
        m8728C.append(this.f48291k);
        m8728C.append(", isInAppPurchaseAllowed=");
        m8728C.append(this.f48292l);
        m8728C.append(", paymentProvider=");
        m8728C.append(this.f48293m);
        m8728C.append(")");
        return m8728C.toString();
    }
}
