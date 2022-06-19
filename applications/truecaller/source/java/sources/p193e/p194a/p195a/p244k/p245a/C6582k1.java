package p193e.p194a.p195a.p244k.p245a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.k1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/k1.class */
public final class C6582k1 {

    /* renamed from: a */
    public final int f21698a;

    /* renamed from: b */
    public final String f21699b;

    /* renamed from: c */
    public final String f21700c;

    /* renamed from: d */
    public final String f21701d;

    /* renamed from: e */
    public final Long f21702e;

    public C6582k1(int i, String str, String str2, String str3, Long l) {
        l.e(str2, "normalizedNumber");
        this.f21698a = i;
        this.f21699b = str;
        this.f21700c = str2;
        this.f21701d = str3;
        this.f21702e = l;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6582k1)) {
                return false;
            }
            C6582k1 c6582k1 = (C6582k1) obj;
            return this.f21698a == c6582k1.f21698a && l.a(this.f21699b, c6582k1.f21699b) && l.a(this.f21700c, c6582k1.f21700c) && l.a(this.f21701d, c6582k1.f21701d) && l.a(this.f21702e, c6582k1.f21702e);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f21698a;
        String str = this.f21699b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f21700c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f21701d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        Long l = this.f21702e;
        if (l != null) {
            i2 = l.hashCode();
        }
        return (((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("JoinedImUser(contactId=");
        m8728C.append(this.f21698a);
        m8728C.append(", name=");
        m8728C.append(this.f21699b);
        m8728C.append(", normalizedNumber=");
        m8728C.append(this.f21700c);
        m8728C.append(", imageUri=");
        m8728C.append(this.f21701d);
        m8728C.append(", phonebookId=");
        m8728C.append(this.f21702e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
