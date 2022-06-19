package p193e.p194a.p1011l.p1025p2;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.p2.g0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/g0.class */
public final class C17090g0 {

    /* renamed from: a */
    public final String f47965a;

    /* renamed from: b */
    public final int f47966b;

    /* renamed from: c */
    public final int f47967c;

    /* renamed from: d */
    public final int f47968d;

    /* renamed from: e */
    public final List<Integer> f47969e;

    /* renamed from: f */
    public final int f47970f;

    /* renamed from: g */
    public final C17135n f47971g;

    public C17090g0(String str, int i, int i2, int i3, List<Integer> list, int i4, C17135n c17135n) {
        l.e(str, "pageName");
        l.e(list, "descriptionsRes");
        this.f47965a = str;
        this.f47966b = i;
        this.f47967c = i2;
        this.f47968d = i3;
        this.f47969e = list;
        this.f47970f = i4;
        this.f47971g = c17135n;
    }

    public /* synthetic */ C17090g0(String str, int i, int i2, int i3, List list, int i4, C17135n c17135n, int i5) {
        this(str, i, i2, i3, list, i4, null);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17090g0)) {
                return false;
            }
            C17090g0 c17090g0 = (C17090g0) obj;
            return l.a(this.f47965a, c17090g0.f47965a) && this.f47966b == c17090g0.f47966b && this.f47967c == c17090g0.f47967c && this.f47968d == c17090g0.f47968d && l.a(this.f47969e, c17090g0.f47969e) && this.f47970f == c17090g0.f47970f && l.a(this.f47971g, c17090g0.f47971g);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f47965a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f47966b;
        int i3 = this.f47967c;
        int i4 = this.f47968d;
        List<Integer> list = this.f47969e;
        int hashCode2 = list != null ? list.hashCode() : 0;
        int i5 = this.f47970f;
        C17135n c17135n = this.f47971g;
        if (c17135n != null) {
            i = c17135n.hashCode();
        }
        return (((((((((((hashCode * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode2) * 31) + i5) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumFeatureViewModel(pageName=");
        m8728C.append(this.f47965a);
        m8728C.append(", titleRes=");
        m8728C.append(this.f47966b);
        m8728C.append(", listIconRes=");
        m8728C.append(this.f47967c);
        m8728C.append(", shortDescriptionRes=");
        m8728C.append(this.f47968d);
        m8728C.append(", descriptionsRes=");
        m8728C.append(this.f47969e);
        m8728C.append(", detailsIconRes=");
        m8728C.append(this.f47970f);
        m8728C.append(", goldCallerIdPreviewData=");
        m8728C.append(this.f47971g);
        m8728C.append(")");
        return m8728C.toString();
    }
}
