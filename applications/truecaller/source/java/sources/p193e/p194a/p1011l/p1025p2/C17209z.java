package p193e.p194a.p1011l.p1025p2;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l.p2.z */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/z.class */
public final class C17209z {

    /* renamed from: a */
    public final boolean f48328a;

    /* renamed from: b */
    public final int f48329b;

    public C17209z(boolean z, int i) {
        this.f48328a = z;
        this.f48329b = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17209z)) {
                return false;
            }
            C17209z c17209z = (C17209z) obj;
            return this.f48328a == c17209z.f48328a && this.f48329b == c17209z.f48329b;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f48328a;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        return ((z2 ? 1 : 0) * 31) + this.f48329b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumBlockingFeature(isEnabled=");
        m8728C.append(this.f48328a);
        m8728C.append(", descriptionRes=");
        return C22128a.m8697J2(m8728C, this.f48329b, ")");
    }
}
