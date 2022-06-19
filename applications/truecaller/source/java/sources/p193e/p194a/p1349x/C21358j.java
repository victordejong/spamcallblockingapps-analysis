package p193e.p194a.p1349x;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.x.j */
/* loaded from: classes9-dex2jar.jar:e/a/x/j.class */
public final class C21358j {

    /* renamed from: a */
    public final String f59777a;

    /* renamed from: b */
    public final String f59778b;

    /* renamed from: c */
    public final String f59779c;

    public C21358j() {
        this.f59777a = null;
        this.f59778b = null;
        this.f59779c = null;
    }

    public C21358j(String str, String str2, String str3) {
        this.f59777a = str;
        this.f59778b = str2;
        this.f59779c = str3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21358j)) {
                return false;
            }
            C21358j c21358j = (C21358j) obj;
            return l.a(this.f59777a, c21358j.f59777a) && l.a(this.f59778b, c21358j.f59778b) && l.a(this.f59779c, c21358j.f59779c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f59777a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f59778b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f59779c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GhostCallContact(name=");
        m8728C.append(this.f59777a);
        m8728C.append(", phoneNumber=");
        m8728C.append(this.f59778b);
        m8728C.append(", profilePicture=");
        return C22128a.m8618h(m8728C, this.f59779c, ")");
    }
}
