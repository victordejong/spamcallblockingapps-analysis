package p193e.p194a.p195a.p235g1;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.g1.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/g1/a.class */
public final class C6253a {

    /* renamed from: a */
    public final String f21009a;

    /* renamed from: b */
    public final float f21010b;

    /* renamed from: c */
    public final String f21011c;

    public C6253a(String str, float f, String str2) {
        l.e(str, "languageCode");
        l.e(str2, "languageIso");
        this.f21009a = str;
        this.f21010b = f;
        this.f21011c = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6253a)) {
                return false;
            }
            C6253a c6253a = (C6253a) obj;
            return l.a(this.f21009a, c6253a.f21009a) && Float.compare(this.f21010b, c6253a.f21010b) == 0 && l.a(this.f21011c, c6253a.f21011c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f21009a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int floatToIntBits = Float.floatToIntBits(this.f21010b);
        String str2 = this.f21011c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((floatToIntBits + (hashCode * 31)) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("IdentificationResult(languageCode=");
        m8728C.append(this.f21009a);
        m8728C.append(", confidence=");
        m8728C.append(this.f21010b);
        m8728C.append(", languageIso=");
        return C22128a.m8618h(m8728C, this.f21011c, ")");
    }
}
