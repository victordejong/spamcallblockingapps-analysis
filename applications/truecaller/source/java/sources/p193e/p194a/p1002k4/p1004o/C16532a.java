package p193e.p194a.p1002k4.p1004o;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.k4.o.a */
/* loaded from: classes11-dex2jar.jar:e/a/k4/o/a.class */
public final class C16532a {

    /* renamed from: a */
    public final double f46462a;

    /* renamed from: b */
    public final double f46463b;

    public C16532a(double d, double d2) {
        this.f46462a = d;
        this.f46463b = d2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16532a)) {
                return false;
            }
            C16532a c16532a = (C16532a) obj;
            return Double.compare(this.f46462a, c16532a.f46462a) == 0 && Double.compare(this.f46463b, c16532a.f46463b) == 0;
        }
        return true;
    }

    public int hashCode() {
        return (Double.doubleToLongBits(this.f46462a) * 31) + Double.doubleToLongBits(this.f46463b);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Location(latitude=");
        m8728C.append(this.f46462a);
        m8728C.append(", longitude=");
        m8728C.append(this.f46463b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
