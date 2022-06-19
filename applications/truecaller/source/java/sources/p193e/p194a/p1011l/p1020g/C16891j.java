package p193e.p194a.p1011l.p1020g;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.l.g.j */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/j.class */
public final class C16891j {

    /* renamed from: a */
    public final String f47448a;

    /* renamed from: b */
    public final a<s> f47449b;

    public C16891j(String str, a<s> aVar) {
        l.e(str, "text");
        l.e(aVar, "onClick");
        this.f47448a = str;
        this.f47449b = aVar;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16891j)) {
                return false;
            }
            C16891j c16891j = (C16891j) obj;
            return l.a(this.f47448a, c16891j.f47448a) && l.a(this.f47449b, c16891j.f47449b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f47448a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        a<s> aVar = this.f47449b;
        if (aVar != null) {
            i = aVar.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Action(text=");
        m8728C.append(this.f47448a);
        m8728C.append(", onClick=");
        m8728C.append(this.f47449b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
