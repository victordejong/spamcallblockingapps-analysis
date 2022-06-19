package p193e.p194a.p195a.p244k.p245a.p247f2;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.a.k.a.f2.d */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/f2/d.class */
public final class C6555d {

    /* renamed from: a */
    public final int f21635a;

    /* renamed from: b */
    public final int f21636b;

    public C6555d(int i, int i2) {
        this.f21635a = i;
        this.f21636b = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6555d)) {
                return false;
            }
            C6555d c6555d = (C6555d) obj;
            return this.f21635a == c6555d.f21635a && this.f21636b == c6555d.f21636b;
        }
        return true;
    }

    public int hashCode() {
        return (this.f21635a * 31) + this.f21636b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MigrationResult(totalCount=");
        m8728C.append(this.f21635a);
        m8728C.append(", successCount=");
        return C22128a.m8697J2(m8728C, this.f21636b, ")");
    }
}
