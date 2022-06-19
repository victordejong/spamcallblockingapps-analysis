package p193e.p194a.p1080o.p1097b.p1098a.p1099a;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.o.b.a.a.r */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/r.class */
public final class C18689r {

    /* renamed from: a */
    public final int f52536a;

    /* renamed from: b */
    public final int f52537b;

    /* renamed from: c */
    public final int f52538c;

    /* renamed from: d */
    public final int f52539d;

    /* renamed from: e */
    public final int f52540e;

    /* renamed from: f */
    public final int f52541f;

    public C18689r(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f52536a = i;
        this.f52537b = i2;
        this.f52538c = i3;
        this.f52539d = i4;
        this.f52540e = i5;
        this.f52541f = i6;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18689r)) {
                return false;
            }
            C18689r c18689r = (C18689r) obj;
            return this.f52536a == c18689r.f52536a && this.f52537b == c18689r.f52537b && this.f52538c == c18689r.f52538c && this.f52539d == c18689r.f52539d && this.f52540e == c18689r.f52540e && this.f52541f == c18689r.f52541f;
        }
        return true;
    }

    public int hashCode() {
        return (((((((((this.f52536a * 31) + this.f52537b) * 31) + this.f52538c) * 31) + this.f52539d) * 31) + this.f52540e) * 31) + this.f52541f;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ThemeConfig(titleColor=");
        m8728C.append(this.f52536a);
        m8728C.append(", iconColors=");
        m8728C.append(this.f52537b);
        m8728C.append(", background=");
        m8728C.append(this.f52538c);
        m8728C.append(", messageTextColor=");
        m8728C.append(this.f52539d);
        m8728C.append(", messageBackground=");
        m8728C.append(this.f52540e);
        m8728C.append(", editMessageIcon=");
        return C22128a.m8697J2(m8728C, this.f52541f, ")");
    }
}
