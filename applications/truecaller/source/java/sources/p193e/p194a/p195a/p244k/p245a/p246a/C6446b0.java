package p193e.p194a.p195a.p244k.p245a.p246a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.a.b0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/b0.class */
public final class C6446b0 {

    /* renamed from: a */
    public final String f21412a;

    /* renamed from: b */
    public final long f21413b;

    /* renamed from: c */
    public final long f21414c;

    /* renamed from: d */
    public final String f21415d;

    /* renamed from: e */
    public final boolean f21416e;

    public C6446b0(String str, long j, long j2, String str2, boolean z) {
        l.e(str, "groupId");
        l.e(str2, "rawId");
        this.f21412a = str;
        this.f21413b = j;
        this.f21414c = j2;
        this.f21415d = str2;
        this.f21416e = z;
    }

    public /* synthetic */ C6446b0(String str, long j, long j2, String str2, boolean z, int i) {
        this(str, j, j2, str2, (i & 16) != 0 ? false : z);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6446b0)) {
                return false;
            }
            C6446b0 c6446b0 = (C6446b0) obj;
            return l.a(this.f21412a, c6446b0.f21412a) && this.f21413b == c6446b0.f21413b && this.f21414c == c6446b0.f21414c && l.a(this.f21415d, c6446b0.f21415d) && this.f21416e == c6446b0.f21416e;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f21412a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f21413b);
        int m34274a2 = C4876d.m34274a(this.f21414c);
        String str2 = this.f21415d;
        if (str2 != null) {
            i = str2.hashCode();
        }
        boolean z = this.f21416e;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((hashCode * 31) + m34274a) * 31) + m34274a2) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("StatusInfo(groupId=");
        m8728C.append(this.f21412a);
        m8728C.append(", sendDate=");
        m8728C.append(this.f21413b);
        m8728C.append(", sequenceNumber=");
        m8728C.append(this.f21414c);
        m8728C.append(", rawId=");
        m8728C.append(this.f21415d);
        m8728C.append(", isStale=");
        return C22128a.m8590o(m8728C, this.f21416e, ")");
    }
}
