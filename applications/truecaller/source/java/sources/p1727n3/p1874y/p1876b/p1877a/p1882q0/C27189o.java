package p1727n3.p1874y.p1876b.p1877a.p1882q0;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.q0.o */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/o.class */
public final class C27189o {

    /* renamed from: c */
    public static final C27189o f76060c = new C27189o(0, 0);

    /* renamed from: a */
    public final long f76061a;

    /* renamed from: b */
    public final long f76062b;

    public C27189o(long j, long j2) {
        this.f76061a = j;
        this.f76062b = j2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C27189o.class != obj.getClass()) {
            return false;
        }
        C27189o c27189o = (C27189o) obj;
        if (this.f76061a != c27189o.f76061a || this.f76062b != c27189o.f76062b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.f76061a) * 31) + ((int) this.f76062b);
    }

    public String toString() {
        long j = this.f76061a;
        long j2 = this.f76062b;
        StringBuilder sb = new StringBuilder(60);
        sb.append("[timeUs=");
        sb.append(j);
        sb.append(", position=");
        return C22128a.m8693K2(sb, j2, "]");
    }
}
