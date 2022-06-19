package p193e.p194a.p1275v.p1276a.p1298r0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v.a.r0.b */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/r0/b.class */
public final class C20838b {

    /* renamed from: a */
    public final C20842f f58552a;

    /* renamed from: b */
    public final C20837a f58553b;

    /* renamed from: c */
    public final C20841e f58554c;

    /* renamed from: d */
    public final C20840d f58555d;

    public C20838b(C20842f c20842f, C20837a c20837a, C20841e c20841e, C20840d c20840d) {
        l.e(c20842f, "header");
        l.e(c20837a, "actionButton");
        this.f58552a = c20842f;
        this.f58553b = c20837a;
        this.f58554c = c20841e;
        this.f58555d = c20840d;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20838b)) {
                return false;
            }
            C20838b c20838b = (C20838b) obj;
            return l.a(this.f58552a, c20838b.f58552a) && l.a(this.f58553b, c20838b.f58553b) && l.a(this.f58554c, c20838b.f58554c) && l.a(this.f58555d, c20838b.f58555d);
        }
        return true;
    }

    public int hashCode() {
        C20842f c20842f = this.f58552a;
        int i = 0;
        int hashCode = c20842f != null ? c20842f.hashCode() : 0;
        C20837a c20837a = this.f58553b;
        int hashCode2 = c20837a != null ? c20837a.hashCode() : 0;
        C20841e c20841e = this.f58554c;
        int hashCode3 = c20841e != null ? c20841e.hashCode() : 0;
        C20840d c20840d = this.f58555d;
        if (c20840d != null) {
            i = c20840d.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DetailsViewAppearance(header=");
        m8728C.append(this.f58552a);
        m8728C.append(", actionButton=");
        m8728C.append(this.f58553b);
        m8728C.append(", feedback=");
        m8728C.append(this.f58554c);
        m8728C.append(", fab=");
        m8728C.append(this.f58555d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
