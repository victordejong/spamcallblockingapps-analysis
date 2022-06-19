package p1727n3.p1874y.p1906c;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.c.y0 */
/* loaded from: classes-dex2jar.jar:n3/y/c/y0.class */
public final class C27493y0 {

    /* renamed from: a */
    public final long f77401a;

    /* renamed from: b */
    public final long f77402b;

    /* renamed from: c */
    public final float f77403c;

    public C27493y0() {
        this.f77401a = 0L;
        this.f77402b = 0L;
        this.f77403c = 1.0f;
    }

    public C27493y0(long j, long j2, float f) {
        this.f77401a = j;
        this.f77402b = j2;
        this.f77403c = f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C27493y0.class != obj.getClass()) {
            return false;
        }
        C27493y0 c27493y0 = (C27493y0) obj;
        if (this.f77401a != c27493y0.f77401a || this.f77402b != c27493y0.f77402b || this.f77403c != c27493y0.f77403c) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (int) ((((int) ((Long.valueOf(this.f77401a).hashCode() * 31) + this.f77402b)) * 31) + this.f77403c);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        C22128a.m8545z0(C27493y0.class, sb, "{AnchorMediaTimeUs=");
        sb.append(this.f77401a);
        sb.append(" AnchorSystemNanoTime=");
        sb.append(this.f77402b);
        sb.append(" ClockRate=");
        sb.append(this.f77403c);
        sb.append("}");
        return sb.toString();
    }
}
