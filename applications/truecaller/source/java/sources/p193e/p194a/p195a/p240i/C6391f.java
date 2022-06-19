package p193e.p194a.p195a.p240i;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import s1.z.c.l;
/* renamed from: e.a.a.i.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/i/f.class */
public final class C6391f {

    /* renamed from: a */
    public final AbstractC9235b.C9239d f21281a;

    /* renamed from: b */
    public final C8505a f21282b;

    /* renamed from: c */
    public final boolean f21283c;

    public C6391f(AbstractC9235b.C9239d c9239d, C8505a c8505a, boolean z) {
        l.e(c9239d, "otpItem");
        this.f21281a = c9239d;
        this.f21282b = c8505a;
        this.f21283c = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6391f)) {
                return false;
            }
            C6391f c6391f = (C6391f) obj;
            return l.a(this.f21281a, c6391f.f21281a) && l.a(this.f21282b, c6391f.f21282b) && this.f21283c == c6391f.f21283c;
        }
        return true;
    }

    public int hashCode() {
        AbstractC9235b.C9239d c9239d = this.f21281a;
        int i = 0;
        int hashCode = c9239d != null ? c9239d.hashCode() : 0;
        C8505a c8505a = this.f21282b;
        if (c8505a != null) {
            i = c8505a.hashCode();
        }
        boolean z = this.f21283c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OtpItemState(otpItem=");
        m8728C.append(this.f21281a);
        m8728C.append(", addressProfile=");
        m8728C.append(this.f21282b);
        m8728C.append(", isAddressLoading=");
        return C22128a.m8590o(m8728C, this.f21283c, ")");
    }
}
