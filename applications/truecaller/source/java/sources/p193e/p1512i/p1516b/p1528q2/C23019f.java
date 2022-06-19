package p193e.p1512i.p1516b.p1528q2;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.i.b.q2.f */
/* loaded from: classes-dex2jar.jar:e/i/b/q2/f.class */
public final class C23019f {

    /* renamed from: a */
    public final int f63786a;

    /* renamed from: b */
    public final String f63787b;

    /* renamed from: c */
    public final Throwable f63788c;

    /* renamed from: d */
    public final String f63789d;

    public C23019f(int i, String str, Throwable th, String str2) {
        this.f63786a = i;
        this.f63787b = str;
        this.f63788c = th;
        this.f63789d = str2;
    }

    public /* synthetic */ C23019f(int i, String str, Throwable th, String str2, int i2) {
        this((i2 & 1) != 0 ? 4 : i, str, null, (i2 & 8) != 0 ? null : str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C23019f)) {
                return false;
            }
            C23019f c23019f = (C23019f) obj;
            return this.f63786a == c23019f.f63786a && l.a(this.f63787b, c23019f.f63787b) && l.a(this.f63788c, c23019f.f63788c) && l.a(this.f63789d, c23019f.f63789d);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f63786a;
        String str = this.f63787b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Throwable th = this.f63788c;
        int hashCode2 = th != null ? th.hashCode() : 0;
        String str2 = this.f63789d;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return (((((i * 31) + hashCode) * 31) + hashCode2) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LogMessage(level=");
        m8728C.append(this.f63786a);
        m8728C.append(", message=");
        m8728C.append(this.f63787b);
        m8728C.append(", throwable=");
        m8728C.append(this.f63788c);
        m8728C.append(", logId=");
        return C22128a.m8618h(m8728C, this.f63789d, ")");
    }
}
