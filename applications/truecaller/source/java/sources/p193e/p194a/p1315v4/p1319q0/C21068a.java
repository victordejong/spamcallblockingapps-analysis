package p193e.p194a.p1315v4.p1319q0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v4.q0.a */
/* loaded from: classes12-dex2jar.jar:e/a/v4/q0/a.class */
public final class C21068a {

    /* renamed from: a */
    public final String f59096a;

    /* renamed from: b */
    public final String f59097b;

    /* renamed from: c */
    public final String f59098c;

    /* renamed from: d */
    public final String f59099d;

    public C21068a(String str, String str2, String str3, String str4) {
        l.e(str, "fullName");
        l.e(str2, "phoneNumber");
        this.f59096a = str;
        this.f59097b = str2;
        this.f59098c = str3;
        this.f59099d = str4;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21068a)) {
                return false;
            }
            C21068a c21068a = (C21068a) obj;
            return l.a(this.f59096a, c21068a.f59096a) && l.a(this.f59097b, c21068a.f59097b) && l.a(this.f59098c, c21068a.f59098c) && l.a(this.f59099d, c21068a.f59099d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f59096a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f59097b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f59098c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f59099d;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TrueProfileCustomData(fullName=");
        m8728C.append(this.f59096a);
        m8728C.append(", phoneNumber=");
        m8728C.append(this.f59097b);
        m8728C.append(", email=");
        m8728C.append(this.f59098c);
        m8728C.append(", address=");
        return C22128a.m8618h(m8728C, this.f59099d, ")");
    }
}
