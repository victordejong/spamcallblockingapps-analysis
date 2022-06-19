package p193e.p194a.p1310v2.p1312w;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v2.w.c */
/* loaded from: classes5-dex2jar.jar:e/a/v2/w/c.class */
public final class C21002c {

    /* renamed from: a */
    public final int f59007a;

    /* renamed from: b */
    public final AbstractC21003d f59008b;

    public C21002c(int i, AbstractC21003d abstractC21003d) {
        this.f59007a = i;
        this.f59008b = abstractC21003d;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21002c)) {
                return false;
            }
            C21002c c21002c = (C21002c) obj;
            return this.f59007a == c21002c.f59007a && l.a(this.f59008b, c21002c.f59008b);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f59007a;
        AbstractC21003d abstractC21003d = this.f59008b;
        return (i * 31) + (abstractC21003d != null ? abstractC21003d.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AttestationResponse(code=");
        m8728C.append(this.f59007a);
        m8728C.append(", dto=");
        m8728C.append(this.f59008b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
