package p193e.p1681q.p1693d.p1696e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.q.d.e.b */
/* loaded from: classes16-dex2jar.jar:e/q/d/e/b.class */
public final class C25204b<A, B> {

    /* renamed from: a */
    public final A f70473a;

    /* renamed from: b */
    public final B f70474b;

    public C25204b(A a, B b) {
        this.f70473a = a;
        this.f70474b = b;
    }

    /* renamed from: a */
    public final A m4095a() {
        return this.f70473a;
    }

    /* renamed from: b */
    public final B m4094b() {
        return this.f70474b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C25204b)) {
                return false;
            }
            C25204b c25204b = (C25204b) obj;
            return l.a(this.f70473a, c25204b.f70473a) && l.a(this.f70474b, c25204b.f70474b);
        }
        return true;
    }

    public int hashCode() {
        A a = this.f70473a;
        int i = 0;
        int hashCode = a != null ? a.hashCode() : 0;
        B b = this.f70474b;
        if (b != null) {
            i = b.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Pair(a=");
        m8728C.append(this.f70473a);
        m8728C.append(", b=");
        return C22128a.m8634d(m8728C, this.f70474b, ")");
    }
}
