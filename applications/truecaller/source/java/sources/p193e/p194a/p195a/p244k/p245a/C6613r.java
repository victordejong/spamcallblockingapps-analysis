package p193e.p194a.p195a.p244k.p245a;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.a.k.a.r */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/r.class */
public final class C6613r {

    /* renamed from: a */
    public final long f21850a;

    /* renamed from: b */
    public final long f21851b;

    /* renamed from: c */
    public final long f21852c;

    public C6613r(long j, long j2, long j3) {
        this.f21850a = j;
        this.f21851b = j2;
        this.f21852c = j3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6613r)) {
                return false;
            }
            C6613r c6613r = (C6613r) obj;
            return this.f21850a == c6613r.f21850a && this.f21851b == c6613r.f21851b && this.f21852c == c6613r.f21852c;
        }
        return true;
    }

    public int hashCode() {
        return (((C4876d.m34274a(this.f21850a) * 31) + C4876d.m34274a(this.f21851b)) * 31) + C4876d.m34274a(this.f21852c);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ImGroupMessage(messageId=");
        m8728C.append(this.f21850a);
        m8728C.append(", conversationId=");
        m8728C.append(this.f21851b);
        m8728C.append(", date=");
        return C22128a.m8693K2(m8728C, this.f21852c, ")");
    }
}
