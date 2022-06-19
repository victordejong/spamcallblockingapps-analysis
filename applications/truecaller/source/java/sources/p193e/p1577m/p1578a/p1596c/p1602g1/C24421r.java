package p193e.p1577m.p1578a.p1596c.p1602g1;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.g1.r */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/r.class */
public final class C24421r {

    /* renamed from: c */
    public static final C24421r f68121c = new C24421r(0, 0);

    /* renamed from: a */
    public final long f68122a;

    /* renamed from: b */
    public final long f68123b;

    public C24421r(long j, long j2) {
        this.f68122a = j;
        this.f68123b = j2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C24421r.class != obj.getClass()) {
            return false;
        }
        C24421r c24421r = (C24421r) obj;
        if (this.f68122a != c24421r.f68122a || this.f68123b != c24421r.f68123b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.f68122a) * 31) + ((int) this.f68123b);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[timeUs=");
        m8728C.append(this.f68122a);
        m8728C.append(", position=");
        return C22128a.m8693K2(m8728C, this.f68123b, "]");
    }
}
