package p193e.p194a.p1011l.p1025p2;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.p2.j1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/j1.class */
public final class C17118j1 {

    /* renamed from: a */
    public final C17097h0 f48046a;

    /* renamed from: b */
    public final int f48047b;

    /* renamed from: c */
    public final String f48048c;

    /* renamed from: d */
    public final String f48049d;

    /* renamed from: e */
    public final int f48050e;

    /* renamed from: f */
    public final List<C17090g0> f48051f;

    public C17118j1(C17097h0 c17097h0, int i, String str, String str2, int i2, List<C17090g0> list) {
        l.e(c17097h0, "listTitle");
        l.e(str, "toolbarTitle");
        l.e(list, "features");
        this.f48046a = c17097h0;
        this.f48047b = i;
        this.f48048c = str;
        this.f48049d = str2;
        this.f48050e = i2;
        this.f48051f = list;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17118j1)) {
                return false;
            }
            C17118j1 c17118j1 = (C17118j1) obj;
            return l.a(this.f48046a, c17118j1.f48046a) && this.f48047b == c17118j1.f48047b && l.a(this.f48048c, c17118j1.f48048c) && l.a(this.f48049d, c17118j1.f48049d) && this.f48050e == c17118j1.f48050e && l.a(this.f48051f, c17118j1.f48051f);
        }
        return true;
    }

    public int hashCode() {
        C17097h0 c17097h0 = this.f48046a;
        int i = 0;
        int hashCode = c17097h0 != null ? c17097h0.hashCode() : 0;
        int i2 = this.f48047b;
        String str = this.f48048c;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f48049d;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        int i3 = this.f48050e;
        List<C17090g0> list = this.f48051f;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + i3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumThemePart(listTitle=");
        m8728C.append(this.f48046a);
        m8728C.append(", detailsTitleRes=");
        m8728C.append(this.f48047b);
        m8728C.append(", toolbarTitle=");
        m8728C.append(this.f48048c);
        m8728C.append(", topImage=");
        m8728C.append(this.f48049d);
        m8728C.append(", defaultTopImageRes=");
        m8728C.append(this.f48050e);
        m8728C.append(", features=");
        return C22128a.m8602l(m8728C, this.f48051f, ")");
    }
}
