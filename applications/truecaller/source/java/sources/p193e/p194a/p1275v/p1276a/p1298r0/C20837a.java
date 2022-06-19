package p193e.p194a.p1275v.p1276a.p1298r0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v.a.r0.a */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/r0/a.class */
public final class C20837a {

    /* renamed from: a */
    public final AbstractC20845h f58550a;

    /* renamed from: b */
    public final int f58551b;

    public C20837a(AbstractC20845h abstractC20845h, int i) {
        l.e(abstractC20845h, "iconPainter");
        this.f58550a = abstractC20845h;
        this.f58551b = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20837a)) {
                return false;
            }
            C20837a c20837a = (C20837a) obj;
            return l.a(this.f58550a, c20837a.f58550a) && this.f58551b == c20837a.f58551b;
        }
        return true;
    }

    public int hashCode() {
        AbstractC20845h abstractC20845h = this.f58550a;
        return ((abstractC20845h != null ? abstractC20845h.hashCode() : 0) * 31) + this.f58551b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DetailsViewActionButtonAppearance(iconPainter=");
        m8728C.append(this.f58550a);
        m8728C.append(", textColor=");
        return C22128a.m8697J2(m8728C, this.f58551b, ")");
    }
}
