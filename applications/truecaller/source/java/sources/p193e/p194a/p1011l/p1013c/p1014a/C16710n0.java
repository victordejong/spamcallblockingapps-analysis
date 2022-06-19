package p193e.p194a.p1011l.p1013c.p1014a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.n0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/n0.class */
public final class C16710n0 {

    /* renamed from: a */
    public final int f46862a;

    /* renamed from: b */
    public final String f46863b;

    /* renamed from: c */
    public final String f46864c;

    /* renamed from: d */
    public final boolean f46865d;

    /* renamed from: e */
    public final String f46866e;

    public C16710n0(int i, String str, String str2, boolean z, String str3) {
        l.e(str, "headerText");
        this.f46862a = i;
        this.f46863b = str;
        this.f46864c = str2;
        this.f46865d = z;
        this.f46866e = str3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16710n0)) {
                return false;
            }
            C16710n0 c16710n0 = (C16710n0) obj;
            return this.f46862a == c16710n0.f46862a && l.a(this.f46863b, c16710n0.f46863b) && l.a(this.f46864c, c16710n0.f46864c) && this.f46865d == c16710n0.f46865d && l.a(this.f46866e, c16710n0.f46866e);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f46862a;
        String str = this.f46863b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f46864c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        boolean z = this.f46865d;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        String str3 = this.f46866e;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return (((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + i3) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("HeaderItem(iconRes=");
        m8728C.append(this.f46862a);
        m8728C.append(", headerText=");
        m8728C.append(this.f46863b);
        m8728C.append(", subHeader1Text=");
        m8728C.append(this.f46864c);
        m8728C.append(", isSubHeader1Medium=");
        m8728C.append(this.f46865d);
        m8728C.append(", subHeader2Text=");
        return C22128a.m8618h(m8728C, this.f46866e, ")");
    }
}
