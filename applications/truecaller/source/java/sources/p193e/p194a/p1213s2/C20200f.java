package p193e.p194a.p1213s2;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.s2.f */
/* loaded from: classes5-dex2jar.jar:e/a/s2/f.class */
public final class C20200f {

    /* renamed from: a */
    public final String f56916a;

    /* renamed from: b */
    public final String f56917b;

    /* renamed from: c */
    public final boolean f56918c;

    /* renamed from: d */
    public final boolean f56919d;

    public C20200f(String str, String str2, boolean z, boolean z2) {
        l.e(str2, "id");
        this.f56916a = str;
        this.f56917b = str2;
        this.f56918c = z;
        this.f56919d = z2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20200f)) {
                return false;
            }
            C20200f c20200f = (C20200f) obj;
            return l.a(this.f56916a, c20200f.f56916a) && l.a(this.f56917b, c20200f.f56917b) && this.f56918c == c20200f.f56918c && this.f56919d == c20200f.f56919d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f56916a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f56917b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        boolean z = this.f56918c;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.f56919d;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        return (((((hashCode * 31) + i) * 31) + i3) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallAnnouncementInfo(name=");
        m8728C.append(this.f56916a);
        m8728C.append(", id=");
        m8728C.append(this.f56917b);
        m8728C.append(", isVoip=");
        m8728C.append(this.f56918c);
        m8728C.append(", isPhoneBookContact=");
        return C22128a.m8590o(m8728C, this.f56919d, ")");
    }
}
