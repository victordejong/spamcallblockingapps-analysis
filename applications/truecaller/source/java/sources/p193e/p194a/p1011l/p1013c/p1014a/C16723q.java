package p193e.p194a.p1011l.p1013c.p1014a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.q */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/q.class */
public final class C16723q {

    /* renamed from: a */
    public final int f46892a;

    /* renamed from: b */
    public final String f46893b;

    /* renamed from: c */
    public final int f46894c;

    public C16723q(int i, String str, int i2) {
        l.e(str, "text");
        this.f46892a = i;
        this.f46893b = str;
        this.f46894c = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16723q)) {
                return false;
            }
            C16723q c16723q = (C16723q) obj;
            return this.f46892a == c16723q.f46892a && l.a(this.f46893b, c16723q.f46893b) && this.f46894c == c16723q.f46894c;
        }
        return true;
    }

    public int hashCode() {
        int i = this.f46892a;
        String str = this.f46893b;
        return (((i * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.f46894c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CardLabel(iconRes=");
        m8728C.append(this.f46892a);
        m8728C.append(", text=");
        m8728C.append(this.f46893b);
        m8728C.append(", textColorAttr=");
        return C22128a.m8697J2(m8728C, this.f46894c, ")");
    }
}
