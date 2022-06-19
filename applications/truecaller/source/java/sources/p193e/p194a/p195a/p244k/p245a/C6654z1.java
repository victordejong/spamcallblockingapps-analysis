package p193e.p194a.p195a.p244k.p245a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.z1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/z1.class */
public final class C6654z1 {

    /* renamed from: a */
    public final int f21938a;

    /* renamed from: b */
    public final String f21939b;

    public C6654z1(int i, String str) {
        l.e(str, "text");
        this.f21938a = i;
        this.f21939b = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6654z1)) {
                return false;
            }
            C6654z1 c6654z1 = (C6654z1) obj;
            return this.f21938a == c6654z1.f21938a && l.a(this.f21939b, c6654z1.f21939b);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f21938a;
        String str = this.f21939b;
        return (i * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TypingIndicator(animationRes=");
        m8728C.append(this.f21938a);
        m8728C.append(", text=");
        return C22128a.m8618h(m8728C, this.f21939b, ")");
    }
}
