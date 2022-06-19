package p193e.p194a.p1275v.p1276a.p1285e0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v.a.e0.h */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/e0/h.class */
public final class C20749h {

    /* renamed from: a */
    public final String f58381a;

    /* renamed from: b */
    public final String f58382b;

    /* renamed from: c */
    public final boolean f58383c;

    public C20749h(String str, String str2, boolean z) {
        l.e(str, "text");
        this.f58381a = str;
        this.f58382b = str2;
        this.f58383c = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20749h)) {
                return false;
            }
            C20749h c20749h = (C20749h) obj;
            return l.a(this.f58381a, c20749h.f58381a) && l.a(this.f58382b, c20749h.f58382b) && this.f58383c == c20749h.f58383c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f58381a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f58382b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        boolean z = this.f58383c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SpamInfo(text=");
        m8728C.append(this.f58381a);
        m8728C.append(", iconUrl=");
        m8728C.append(this.f58382b);
        m8728C.append(", isSpamCategoryAvailable=");
        return C22128a.m8590o(m8728C, this.f58383c, ")");
    }
}
