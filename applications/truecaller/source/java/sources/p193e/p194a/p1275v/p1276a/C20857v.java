package p193e.p194a.p1275v.p1276a;

import com.truecaller.data.entity.Number;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v.a.v */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/v.class */
public final class C20857v {

    /* renamed from: a */
    public final Number f58633a;

    /* renamed from: b */
    public final boolean f58634b;

    public C20857v(Number number, boolean z) {
        l.e(number, "number");
        this.f58633a = number;
        this.f58634b = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20857v)) {
                return false;
            }
            C20857v c20857v = (C20857v) obj;
            return l.a(this.f58633a, c20857v.f58633a) && this.f58634b == c20857v.f58634b;
        }
        return true;
    }

    public int hashCode() {
        Number number = this.f58633a;
        int hashCode = number != null ? number.hashCode() : 0;
        boolean z = this.f58634b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NumberAndContextCallCapability(number=");
        m8728C.append(this.f58633a);
        m8728C.append(", isContextCallCapable=");
        return C22128a.m8590o(m8728C, this.f58634b, ")");
    }
}
