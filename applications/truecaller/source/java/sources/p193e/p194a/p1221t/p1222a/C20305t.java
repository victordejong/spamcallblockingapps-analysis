package p193e.p194a.p1221t.p1222a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.t.a.t */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/t.class */
public final class C20305t {

    /* renamed from: a */
    public final int f57112a;

    /* renamed from: b */
    public String f57113b;

    /* renamed from: c */
    public String f57114c;

    public C20305t(int i, String str, String str2) {
        l.e(str, "shortname");
        l.e(str2, "emoji");
        this.f57112a = i;
        this.f57113b = str;
        this.f57114c = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20305t)) {
                return false;
            }
            C20305t c20305t = (C20305t) obj;
            return this.f57112a == c20305t.f57112a && l.a(this.f57113b, c20305t.f57113b) && l.a(this.f57114c, c20305t.f57114c);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f57112a;
        String str = this.f57113b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f57114c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Shortname(id=");
        m8728C.append(this.f57112a);
        m8728C.append(", shortname=");
        m8728C.append(this.f57113b);
        m8728C.append(", emoji=");
        return C22128a.m8618h(m8728C, this.f57114c, ")");
    }
}
