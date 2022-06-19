package p193e.p194a.p195a.p200c.p214m8;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.c.m8.f */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/m8/f.class */
public final class C5532f {

    /* renamed from: a */
    public final String f18711a;

    /* renamed from: b */
    public final int f18712b;

    /* renamed from: c */
    public final String f18713c;

    public C5532f(String str, int i, String str2) {
        l.e(str, "emoji");
        l.e(str2, "analyticsValue");
        this.f18711a = str;
        this.f18712b = i;
        this.f18713c = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C5532f)) {
                return false;
            }
            C5532f c5532f = (C5532f) obj;
            return l.a(this.f18711a, c5532f.f18711a) && this.f18712b == c5532f.f18712b && l.a(this.f18713c, c5532f.f18713c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f18711a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f18712b;
        String str2 = this.f18713c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PokeableEmoji(emoji=");
        m8728C.append(this.f18711a);
        m8728C.append(", res=");
        m8728C.append(this.f18712b);
        m8728C.append(", analyticsValue=");
        return C22128a.m8618h(m8728C, this.f18713c, ")");
    }
}
