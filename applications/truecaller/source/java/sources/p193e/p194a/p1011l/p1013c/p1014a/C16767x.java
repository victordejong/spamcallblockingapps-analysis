package p193e.p194a.p1011l.p1013c.p1014a;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l.c.a.x */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/x.class */
public final class C16767x {

    /* renamed from: a */
    public final int f46997a;

    /* renamed from: b */
    public final int f46998b;

    public C16767x(int i, int i2) {
        this.f46997a = i;
        this.f46998b = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16767x)) {
                return false;
            }
            C16767x c16767x = (C16767x) obj;
            return this.f46997a == c16767x.f46997a && this.f46998b == c16767x.f46998b;
        }
        return true;
    }

    public int hashCode() {
        return (this.f46997a * 31) + this.f46998b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CountDownTextSpec(color=");
        m8728C.append(this.f46997a);
        m8728C.append(", backgroundColor=");
        return C22128a.m8697J2(m8728C, this.f46998b, ")");
    }
}
