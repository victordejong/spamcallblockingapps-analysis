package p193e.p194a.p1011l.p1013c.p1014a;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l.c.a.o */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/o.class */
public final class C16713o {

    /* renamed from: a */
    public final long f46872a;

    /* renamed from: b */
    public final int f46873b;

    public C16713o(long j, int i) {
        this.f46872a = j;
        this.f46873b = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16713o)) {
                return false;
            }
            C16713o c16713o = (C16713o) obj;
            return this.f46872a == c16713o.f46872a && this.f46873b == c16713o.f46873b;
        }
        return true;
    }

    public int hashCode() {
        return (C4876d.m34274a(this.f46872a) * 31) + this.f46873b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CardDismissRepositoryEntry(timestamp=");
        m8728C.append(this.f46872a);
        m8728C.append(", countLeft=");
        return C22128a.m8697J2(m8728C, this.f46873b, ")");
    }
}
