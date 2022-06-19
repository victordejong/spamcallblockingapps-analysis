package p193e.p194a.p1221t.p1222a.p1223a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.t.a.a.c */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/a/c.class */
public final class C20243c {

    /* renamed from: a */
    public final String f56995a;

    /* renamed from: b */
    public final float f56996b;

    /* renamed from: c */
    public final int f56997c;

    /* renamed from: d */
    public final int f56998d;

    /* renamed from: e */
    public final long f56999e;

    public C20243c(String str, float f, int i, int i2, long j) {
        l.e(str, "url");
        this.f56995a = str;
        this.f56996b = f;
        this.f56997c = i;
        this.f56998d = i2;
        this.f56999e = j;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20243c)) {
                return false;
            }
            C20243c c20243c = (C20243c) obj;
            return l.a(this.f56995a, c20243c.f56995a) && Float.compare(this.f56996b, c20243c.f56996b) == 0 && this.f56997c == c20243c.f56997c && this.f56998d == c20243c.f56998d && this.f56999e == c20243c.f56999e;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f56995a;
        return ((((((Float.floatToIntBits(this.f56996b) + ((str != null ? str.hashCode() : 0) * 31)) * 31) + this.f56997c) * 31) + this.f56998d) * 31) + C4876d.m34274a(this.f56999e);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Format(url=");
        m8728C.append(this.f56995a);
        m8728C.append(", aspectRatio=");
        m8728C.append(this.f56996b);
        m8728C.append(", width=");
        m8728C.append(this.f56997c);
        m8728C.append(", height=");
        m8728C.append(this.f56998d);
        m8728C.append(", size=");
        return C22128a.m8693K2(m8728C, this.f56999e, ")");
    }
}
