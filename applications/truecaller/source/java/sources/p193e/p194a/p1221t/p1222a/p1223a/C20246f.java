package p193e.p194a.p1221t.p1222a.p1223a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.t.a.a.f */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/a/f.class */
public final class C20246f {

    /* renamed from: a */
    public final String f57003a;

    /* renamed from: b */
    public final C20243c f57004b;

    /* renamed from: c */
    public final C20243c f57005c;

    /* renamed from: d */
    public final C20243c f57006d;

    /* renamed from: e */
    public final int f57007e;

    public C20246f(String str, C20243c c20243c, C20243c c20243c2, C20243c c20243c3, int i) {
        l.e(str, "id");
        l.e(c20243c, "nanoGif");
        l.e(c20243c2, "tinyGif");
        l.e(c20243c3, "mediumGif");
        this.f57003a = str;
        this.f57004b = c20243c;
        this.f57005c = c20243c2;
        this.f57006d = c20243c3;
        this.f57007e = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20246f)) {
                return false;
            }
            C20246f c20246f = (C20246f) obj;
            return l.a(this.f57003a, c20246f.f57003a) && l.a(this.f57004b, c20246f.f57004b) && l.a(this.f57005c, c20246f.f57005c) && l.a(this.f57006d, c20246f.f57006d) && this.f57007e == c20246f.f57007e;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f57003a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C20243c c20243c = this.f57004b;
        int hashCode2 = c20243c != null ? c20243c.hashCode() : 0;
        C20243c c20243c2 = this.f57005c;
        int hashCode3 = c20243c2 != null ? c20243c2.hashCode() : 0;
        C20243c c20243c3 = this.f57006d;
        if (c20243c3 != null) {
            i = c20243c3.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + this.f57007e;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GifItem(id=");
        m8728C.append(this.f57003a);
        m8728C.append(", nanoGif=");
        m8728C.append(this.f57004b);
        m8728C.append(", tinyGif=");
        m8728C.append(this.f57005c);
        m8728C.append(", mediumGif=");
        m8728C.append(this.f57006d);
        m8728C.append(", gifOrigin=");
        return C22128a.m8697J2(m8728C, this.f57007e, ")");
    }
}
