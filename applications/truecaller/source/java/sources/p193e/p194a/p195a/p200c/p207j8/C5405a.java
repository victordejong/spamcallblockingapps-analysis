package p193e.p194a.p195a.p200c.p207j8;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.c.j8.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/j8/a.class */
public final class C5405a {

    /* renamed from: a */
    public final String f18491a;

    /* renamed from: b */
    public final int f18492b;

    public C5405a(String str, int i) {
        l.e(str, "code");
        this.f18491a = str;
        this.f18492b = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C5405a)) {
                return false;
            }
            C5405a c5405a = (C5405a) obj;
            return l.a(this.f18491a, c5405a.f18491a) && this.f18492b == c5405a.f18492b;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f18491a;
        return ((str != null ? str.hashCode() : 0) * 31) + this.f18492b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AnimatedEmoji(code=");
        m8728C.append(this.f18491a);
        m8728C.append(", resId=");
        return C22128a.m8697J2(m8728C, this.f18492b, ")");
    }
}
