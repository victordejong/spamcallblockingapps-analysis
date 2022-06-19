package p193e.p194a.p1406z3.p1409i;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.z3.i.d */
/* loaded from: classes9-dex2jar.jar:e/a/z3/i/d.class */
public final class C21872d extends AbstractC21877g {

    /* renamed from: a */
    public final int f60761a;

    /* renamed from: b */
    public final int f60762b;

    public C21872d(int i, int i2) {
        super(null);
        this.f60761a = i;
        this.f60762b = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21872d)) {
                return false;
            }
            C21872d c21872d = (C21872d) obj;
            return this.f60761a == c21872d.f60761a && this.f60762b == c21872d.f60762b;
        }
        return true;
    }

    public int hashCode() {
        return (this.f60761a * 31) + this.f60762b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CustomPxSize(widthPx=");
        m8728C.append(this.f60761a);
        m8728C.append(", heightPx=");
        return C22128a.m8697J2(m8728C, this.f60762b, ")");
    }
}
