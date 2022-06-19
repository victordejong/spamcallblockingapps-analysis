package p193e.p194a.p1011l.p1023n2;

import com.truecaller.premium.data.PremiumProductType;
import com.truecaller.premium.data.ProductKind;
import java.io.Serializable;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1025p2.C17138n1;
import s1.z.c.l;
import w3.b.a.u;
import w3.c.a.a.a.h;
/* renamed from: e.a.l.n2.f */
/* loaded from: classes12-dex2jar.jar:e/a/l/n2/f.class */
public final class C16993f implements Serializable {

    /* renamed from: a */
    public final String f47662a;

    /* renamed from: b */
    public final String f47663b;

    /* renamed from: c */
    public final String f47664c;

    /* renamed from: d */
    public final String f47665d;

    /* renamed from: e */
    public final long f47666e;

    /* renamed from: f */
    public final String f47667f;

    /* renamed from: g */
    public final long f47668g;

    /* renamed from: h */
    public final u f47669h;

    /* renamed from: i */
    public final int f47670i;

    /* renamed from: j */
    public final u f47671j;

    /* renamed from: k */
    public final ProductKind f47672k;

    /* renamed from: l */
    public final PremiumProductType f47673l;

    /* renamed from: m */
    public final boolean f47674m;

    /* renamed from: n */
    public final C17138n1 f47675n;

    public C16993f(String str, String str2, String str3, String str4, long j, String str5, long j2, u uVar, int i, u uVar2, ProductKind productKind, PremiumProductType premiumProductType, boolean z, C17138n1 c17138n1) {
        l.e(str, "sku");
        l.e(str2, "title");
        l.e(str3, "price");
        l.e(str4, "priceCurrencyCode");
        l.e(str5, "introductoryPrice");
        l.e(productKind, "productKind");
        this.f47662a = str;
        this.f47663b = str2;
        this.f47664c = str3;
        this.f47665d = str4;
        this.f47666e = j;
        this.f47667f = str5;
        this.f47668g = j2;
        this.f47669h = uVar;
        this.f47670i = i;
        this.f47671j = uVar2;
        this.f47672k = productKind;
        this.f47673l = premiumProductType;
        this.f47674m = z;
        this.f47675n = c17138n1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r26v3 */
    public /* synthetic */ C16993f(String str, String str2, String str3, String str4, long j, String str5, long j2, u uVar, int i, u uVar2, ProductKind productKind, PremiumProductType premiumProductType, boolean z, C17138n1 c17138n1, int i2) {
        this(str, str2, str3, str4, j, (i2 & 32) != 0 ? "" : str5, (i2 & 64) != 0 ? 0 : j2, (i2 & 128) != 0 ? null : uVar, (i2 & 256) != 0 ? 0 : i, (i2 & 512) != 0 ? null : uVar2, (i2 & 1024) != 0 ? ProductKind.NONE : productKind, null, (i2 & 4096) != 0 ? false : z, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* renamed from: a */
    public static C16993f m16658a(C16993f c16993f, String str, String str2, String str3, String str4, long j, String str5, long j2, u uVar, int i, u uVar2, ProductKind productKind, PremiumProductType premiumProductType, boolean z, C17138n1 c17138n1, int i2) {
        String str6 = null;
        String str7 = (i2 & 1) != 0 ? c16993f.f47662a : null;
        if ((i2 & 2) != 0) {
            str6 = c16993f.f47663b;
        }
        if ((i2 & 4) != 0) {
            str3 = c16993f.f47664c;
        }
        if ((i2 & 8) != 0) {
            str4 = c16993f.f47665d;
        }
        ?? r24 = j;
        if ((i2 & 16) != 0) {
            r24 = c16993f.f47666e;
        }
        if ((i2 & 32) != 0) {
            str5 = c16993f.f47667f;
        }
        ?? r27 = j2;
        if ((i2 & 64) != 0) {
            r27 = c16993f.f47668g;
        }
        if ((i2 & 128) != 0) {
            uVar = c16993f.f47669h;
        }
        if ((i2 & 256) != 0) {
            i = c16993f.f47670i;
        }
        if ((i2 & 512) != 0) {
            uVar2 = c16993f.f47671j;
        }
        if ((i2 & 1024) != 0) {
            productKind = c16993f.f47672k;
        }
        if ((i2 & 2048) != 0) {
            premiumProductType = c16993f.f47673l;
        }
        if ((i2 & 4096) != 0) {
            z = c16993f.f47674m;
        }
        if ((i2 & 8192) != 0) {
            c17138n1 = c16993f.f47675n;
        }
        Objects.requireNonNull(c16993f);
        l.e(str7, "sku");
        l.e(str6, "title");
        l.e(str3, "price");
        l.e(str4, "priceCurrencyCode");
        l.e(str5, "introductoryPrice");
        l.e(productKind, "productKind");
        return new C16993f(str7, str6, str3, str4, r24, str5, r27, uVar, i, uVar2, productKind, premiumProductType, z, c17138n1);
    }

    /* renamed from: b */
    public final String m16657b() {
        return h.j(this.f47667f) ? this.f47664c : this.f47667f;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: c */
    public final long m16656c() {
        return h.j(this.f47667f) ? this.f47666e : this.f47668g;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16993f)) {
                return false;
            }
            C16993f c16993f = (C16993f) obj;
            return l.a(this.f47662a, c16993f.f47662a) && l.a(this.f47663b, c16993f.f47663b) && l.a(this.f47664c, c16993f.f47664c) && l.a(this.f47665d, c16993f.f47665d) && this.f47666e == c16993f.f47666e && l.a(this.f47667f, c16993f.f47667f) && this.f47668g == c16993f.f47668g && l.a(this.f47669h, c16993f.f47669h) && this.f47670i == c16993f.f47670i && l.a(this.f47671j, c16993f.f47671j) && l.a(this.f47672k, c16993f.f47672k) && l.a(this.f47673l, c16993f.f47673l) && this.f47674m == c16993f.f47674m && l.a(this.f47675n, c16993f.f47675n);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f47662a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f47663b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f47664c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f47665d;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f47666e);
        String str5 = this.f47667f;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        int m34274a2 = C4876d.m34274a(this.f47668g);
        u uVar = this.f47669h;
        int hashCode6 = uVar != null ? uVar.hashCode() : 0;
        int i2 = this.f47670i;
        u uVar2 = this.f47671j;
        int hashCode7 = uVar2 != null ? uVar2.hashCode() : 0;
        ProductKind productKind = this.f47672k;
        int hashCode8 = productKind != null ? productKind.hashCode() : 0;
        PremiumProductType premiumProductType = this.f47673l;
        int hashCode9 = premiumProductType != null ? premiumProductType.hashCode() : 0;
        boolean z = this.f47674m;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        C17138n1 c17138n1 = this.f47675n;
        if (c17138n1 != null) {
            i = c17138n1.hashCode();
        }
        return (((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + m34274a) * 31) + hashCode5) * 31) + m34274a2) * 31) + hashCode6) * 31) + i2) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Subscription(sku=");
        m8728C.append(this.f47662a);
        m8728C.append(", title=");
        m8728C.append(this.f47663b);
        m8728C.append(", price=");
        m8728C.append(this.f47664c);
        m8728C.append(", priceCurrencyCode=");
        m8728C.append(this.f47665d);
        m8728C.append(", priceAmountMicros=");
        m8728C.append(this.f47666e);
        m8728C.append(", introductoryPrice=");
        m8728C.append(this.f47667f);
        m8728C.append(", introductoryPriceAmountMicros=");
        m8728C.append(this.f47668g);
        m8728C.append(", freeTrialPeriod=");
        m8728C.append(this.f47669h);
        m8728C.append(", introductoryPriceCycles=");
        m8728C.append(this.f47670i);
        m8728C.append(", introductoryPricePeriod=");
        m8728C.append(this.f47671j);
        m8728C.append(", productKind=");
        m8728C.append(this.f47672k);
        m8728C.append(", productType=");
        m8728C.append(this.f47673l);
        m8728C.append(", isWinback=");
        m8728C.append(this.f47674m);
        m8728C.append(", promotion=");
        m8728C.append(this.f47675n);
        m8728C.append(")");
        return m8728C.toString();
    }
}
