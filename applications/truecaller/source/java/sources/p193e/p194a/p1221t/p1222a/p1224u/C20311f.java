package p193e.p194a.p1221t.p1222a.p1224u;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.t.a.u.f */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/u/f.class */
public final class C20311f {

    /* renamed from: a */
    public final C20308c f57124a;

    /* renamed from: b */
    public final List<C20310e> f57125b;

    public C20311f(C20308c c20308c, List<C20310e> list) {
        l.e(c20308c, "codePointTree");
        l.e(list, "categories");
        this.f57124a = c20308c;
        this.f57125b = list;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20311f)) {
                return false;
            }
            C20311f c20311f = (C20311f) obj;
            return l.a(this.f57124a, c20311f.f57124a) && l.a(this.f57125b, c20311f.f57125b);
        }
        return true;
    }

    public int hashCode() {
        C20308c c20308c = this.f57124a;
        int i = 0;
        int hashCode = c20308c != null ? c20308c.hashCode() : 0;
        List<C20310e> list = this.f57125b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EmojiMetadata(codePointTree=");
        m8728C.append(this.f57124a);
        m8728C.append(", categories=");
        return C22128a.m8602l(m8728C, this.f57125b, ")");
    }
}
