package p193e.p194a.p1011l.p1013c.p1014a;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l.c.a.k */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/k.class */
public final class C16695k {

    /* renamed from: a */
    public final int f46836a;

    /* renamed from: b */
    public final int f46837b;

    public C16695k(int i, int i2) {
        this.f46836a = i;
        this.f46837b = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16695k)) {
                return false;
            }
            C16695k c16695k = (C16695k) obj;
            return this.f46836a == c16695k.f46836a && this.f46837b == c16695k.f46837b;
        }
        return true;
    }

    public int hashCode() {
        return (this.f46836a * 31) + this.f46837b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CardDismissConfig(coolOffDays=");
        m8728C.append(this.f46836a);
        m8728C.append(", displayCount=");
        return C22128a.m8697J2(m8728C, this.f46837b, ")");
    }
}
