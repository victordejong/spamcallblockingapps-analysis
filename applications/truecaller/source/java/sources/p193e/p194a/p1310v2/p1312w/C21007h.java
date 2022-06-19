package p193e.p194a.p1310v2.p1312w;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v2.w.h */
/* loaded from: classes5-dex2jar.jar:e/a/v2/w/h.class */
public final class C21007h {

    /* renamed from: a */
    public final int f59011a;

    /* renamed from: b */
    public final AbstractC21008i f59012b;

    public C21007h(int i, AbstractC21008i abstractC21008i) {
        this.f59011a = i;
        this.f59012b = abstractC21008i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21007h)) {
                return false;
            }
            C21007h c21007h = (C21007h) obj;
            return this.f59011a == c21007h.f59011a && l.a(this.f59012b, c21007h.f59012b);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f59011a;
        AbstractC21008i abstractC21008i = this.f59012b;
        return (i * 31) + (abstractC21008i != null ? abstractC21008i.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VerificationAttestationResponse(code=");
        m8728C.append(this.f59011a);
        m8728C.append(", dto=");
        m8728C.append(this.f59012b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
