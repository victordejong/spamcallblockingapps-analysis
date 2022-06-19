package p193e.p194a.p1221t.p1222a.p1224u;

import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.t.a.u.c */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/u/c.class */
public final class C20308c {

    /* renamed from: a */
    public final Map<Integer, C20309d> f57117a;

    /* renamed from: b */
    public final Map<Integer, C20308c> f57118b;

    public C20308c(Map<Integer, C20309d> map, Map<Integer, C20308c> map2) {
        l.e(map, "emojis");
        l.e(map2, "childNodes");
        this.f57117a = map;
        this.f57118b = map2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20308c)) {
                return false;
            }
            C20308c c20308c = (C20308c) obj;
            return l.a(this.f57117a, c20308c.f57117a) && l.a(this.f57118b, c20308c.f57118b);
        }
        return true;
    }

    public int hashCode() {
        Map<Integer, C20309d> map = this.f57117a;
        int i = 0;
        int hashCode = map != null ? map.hashCode() : 0;
        Map<Integer, C20308c> map2 = this.f57118b;
        if (map2 != null) {
            i = map2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CodePointNode(emojis=");
        m8728C.append(this.f57117a);
        m8728C.append(", childNodes=");
        m8728C.append(this.f57118b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
