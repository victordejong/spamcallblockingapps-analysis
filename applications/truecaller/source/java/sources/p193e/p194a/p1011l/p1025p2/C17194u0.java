package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.data.ProductKind;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.p2.u0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/u0.class */
public final class C17194u0 {

    /* renamed from: a */
    public final boolean f48242a;

    /* renamed from: b */
    public final String f48243b;

    /* renamed from: c */
    public final ProductKind f48244c;

    public C17194u0(boolean z, String str, ProductKind productKind) {
        l.e(str, "level");
        l.e(productKind, "productKind");
        this.f48242a = z;
        this.f48243b = str;
        this.f48244c = productKind;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17194u0)) {
                return false;
            }
            C17194u0 c17194u0 = (C17194u0) obj;
            return this.f48242a == c17194u0.f48242a && l.a(this.f48243b, c17194u0.f48243b) && l.a(this.f48244c, c17194u0.f48244c);
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f48242a;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        String str = this.f48243b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        ProductKind productKind = this.f48244c;
        if (productKind != null) {
            i = productKind.hashCode();
        }
        return ((((z2 ? 1 : 0) * 31) + hashCode) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumState(isPremium=");
        m8728C.append(this.f48242a);
        m8728C.append(", level=");
        m8728C.append(this.f48243b);
        m8728C.append(", productKind=");
        m8728C.append(this.f48244c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
