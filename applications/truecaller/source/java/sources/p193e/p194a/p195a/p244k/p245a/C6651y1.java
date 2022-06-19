package p193e.p194a.p195a.p244k.p245a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import q3.a.p1;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.y1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/y1.class */
public final class C6651y1 {

    /* renamed from: a */
    public final p1 f21932a;

    public C6651y1(p1 p1Var) {
        this.f21932a = p1Var;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C6651y1) && l.a(this.f21932a, ((C6651y1) obj).f21932a);
        }
        return true;
    }

    public int hashCode() {
        p1 p1Var = this.f21932a;
        return p1Var != null ? p1Var.hashCode() : 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TypingHandle(job=");
        m8728C.append(this.f21932a);
        m8728C.append(")");
        return m8728C.toString();
    }
}
