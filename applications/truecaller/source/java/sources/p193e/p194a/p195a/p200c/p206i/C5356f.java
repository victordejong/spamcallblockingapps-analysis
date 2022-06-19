package p193e.p194a.p195a.p200c.p206i;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.c.i.f */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i/f.class */
public final class C5356f {

    /* renamed from: a */
    public final long f18314a;

    /* renamed from: b */
    public final long f18315b;

    /* renamed from: c */
    public final int f18316c;

    /* renamed from: d */
    public final long f18317d;

    /* renamed from: e */
    public final long f18318e;

    /* renamed from: f */
    public final boolean f18319f;

    /* renamed from: g */
    public final boolean f18320g;

    /* renamed from: h */
    public final String f18321h;

    /* renamed from: i */
    public final int f18322i;

    public C5356f(long j, long j2, int i, long j3, long j4, boolean z, boolean z2, String str, int i2) {
        l.e(str, "subscriptionId");
        this.f18314a = j;
        this.f18315b = j2;
        this.f18316c = i;
        this.f18317d = j3;
        this.f18318e = j4;
        this.f18319f = z;
        this.f18320g = z2;
        this.f18321h = str;
        this.f18322i = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C5356f)) {
                return false;
            }
            C5356f c5356f = (C5356f) obj;
            return this.f18314a == c5356f.f18314a && this.f18315b == c5356f.f18315b && this.f18316c == c5356f.f18316c && this.f18317d == c5356f.f18317d && this.f18318e == c5356f.f18318e && this.f18319f == c5356f.f18319f && this.f18320g == c5356f.f18320g && l.a(this.f18321h, c5356f.f18321h) && this.f18322i == c5356f.f18322i;
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f18314a);
        int m34274a2 = C4876d.m34274a(this.f18315b);
        int i = this.f18316c;
        int m34274a3 = C4876d.m34274a(this.f18317d);
        int m34274a4 = C4876d.m34274a(this.f18318e);
        boolean z = this.f18319f;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.f18320g;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        String str = this.f18321h;
        return (((((((((((((((m34274a * 31) + m34274a2) * 31) + i) * 31) + m34274a3) * 31) + m34274a4) * 31) + i3) * 31) + i2) * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.f18322i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallsHistoryItem(id=");
        m8728C.append(this.f18314a);
        m8728C.append(", calLogId=");
        m8728C.append(this.f18315b);
        m8728C.append(", type=");
        m8728C.append(this.f18316c);
        m8728C.append(", date=");
        m8728C.append(this.f18317d);
        m8728C.append(", duration=");
        m8728C.append(this.f18318e);
        m8728C.append(", isVoip=");
        m8728C.append(this.f18319f);
        m8728C.append(", isFlash=");
        m8728C.append(this.f18320g);
        m8728C.append(", subscriptionId=");
        m8728C.append(this.f18321h);
        m8728C.append(", action=");
        return C22128a.m8697J2(m8728C, this.f18322i, ")");
    }
}
