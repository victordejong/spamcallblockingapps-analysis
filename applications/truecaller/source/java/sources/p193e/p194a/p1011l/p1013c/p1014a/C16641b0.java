package p193e.p194a.p1011l.p1013c.p1014a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.b0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/b0.class */
public final class C16641b0 {

    /* renamed from: a */
    public final String f46752a;

    /* renamed from: b */
    public final int f46753b;

    public C16641b0(String str, int i) {
        l.e(str, "changedData");
        this.f46752a = str;
        this.f46753b = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16641b0)) {
                return false;
            }
            C16641b0 c16641b0 = (C16641b0) obj;
            return l.a(this.f46752a, c16641b0.f46752a) && this.f46753b == c16641b0.f46753b;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f46752a;
        return ((str != null ? str.hashCode() : 0) * 31) + this.f46753b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DataChangeHolder(changedData=");
        m8728C.append(this.f46752a);
        m8728C.append(", cardPosition=");
        return C22128a.m8697J2(m8728C, this.f46753b, ")");
    }
}
