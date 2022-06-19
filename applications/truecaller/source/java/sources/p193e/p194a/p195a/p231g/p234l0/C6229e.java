package p193e.p194a.p195a.p231g.p234l0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.g.l0.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/l0/e.class */
public final class C6229e {

    /* renamed from: a */
    public final long f20904a;

    /* renamed from: b */
    public final long f20905b;

    /* renamed from: c */
    public final int f20906c;

    /* renamed from: d */
    public final String f20907d;

    public C6229e(long j, long j2, int i, String str) {
        this.f20904a = j;
        this.f20905b = j2;
        this.f20906c = i;
        this.f20907d = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6229e)) {
                return false;
            }
            C6229e c6229e = (C6229e) obj;
            return this.f20904a == c6229e.f20904a && this.f20905b == c6229e.f20905b && this.f20906c == c6229e.f20906c && l.a(this.f20907d, c6229e.f20907d);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f20904a);
        int m34274a2 = C4876d.m34274a(this.f20905b);
        int i = this.f20906c;
        String str = this.f20907d;
        return (((((m34274a * 31) + m34274a2) * 31) + i) * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MessageToNudge(messageId=");
        m8728C.append(this.f20904a);
        m8728C.append(", conversationId=");
        m8728C.append(this.f20905b);
        m8728C.append(", deliveryStatus=");
        m8728C.append(this.f20906c);
        m8728C.append(", participantName=");
        return C22128a.m8618h(m8728C, this.f20907d, ")");
    }
}
