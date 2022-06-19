package p193e.p194a.p195a;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.a.f0 */
/* loaded from: classes10-dex2jar.jar:e/a/a/f0.class */
public final class C6060f0 {

    /* renamed from: a */
    public final int f20120a;

    /* renamed from: b */
    public final int f20121b;

    /* renamed from: c */
    public final int f20122c;

    /* renamed from: d */
    public final int f20123d;

    /* renamed from: e */
    public final int f20124e;

    public C6060f0(int i, int i2, int i3, int i4, int i5) {
        this.f20120a = i;
        this.f20121b = i2;
        this.f20122c = i3;
        this.f20123d = i4;
        this.f20124e = i5;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6060f0)) {
                return false;
            }
            C6060f0 c6060f0 = (C6060f0) obj;
            return this.f20120a == c6060f0.f20120a && this.f20121b == c6060f0.f20121b && this.f20122c == c6060f0.f20122c && this.f20123d == c6060f0.f20123d && this.f20124e == c6060f0.f20124e;
        }
        return true;
    }

    public int hashCode() {
        return (((((((this.f20120a * 31) + this.f20121b) * 31) + this.f20122c) * 31) + this.f20123d) * 31) + this.f20124e;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SendOptionItem(id=");
        m8728C.append(this.f20120a);
        m8728C.append(", backgroundTint=");
        m8728C.append(this.f20121b);
        m8728C.append(", icon=");
        m8728C.append(this.f20122c);
        m8728C.append(", tintColor=");
        m8728C.append(this.f20123d);
        m8728C.append(", title=");
        return C22128a.m8697J2(m8728C, this.f20124e, ")");
    }
}
