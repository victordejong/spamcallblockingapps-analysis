package p193e.p1681q.p1693d.p1696e;

import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1693d.p1694c.C25199a;
import p193e.p1681q.p1693d.p1694c.C25200b;
import s1.z.c.l;
/* renamed from: e.q.d.e.c */
/* loaded from: classes16-dex2jar.jar:e/q/d/e/c.class */
public final class C25205c {

    /* renamed from: a */
    public C25200b f70475a;

    /* renamed from: b */
    public final String f70476b;

    /* renamed from: c */
    public final Map<String, String> f70477c;

    /* renamed from: d */
    public String f70478d;

    /* renamed from: e */
    public final int f70479e;

    public C25205c(String str, Map<String, String> map, C25200b c25200b, int i) {
        l.f(str, "type");
        l.f(map, "valMap");
        l.f(str, "type");
        l.f(map, "valMap");
        this.f70476b = str;
        this.f70477c = map;
        this.f70478d = "";
        this.f70479e = i;
        this.f70475a = c25200b;
        this.f70478d = c25200b != null ? C25199a.m4097a(c25200b) : null;
    }

    public C25205c(String str, Map<String, String> map, String str2, int i) {
        l.f(str, "type");
        l.f(map, "valMap");
        this.f70476b = str;
        this.f70477c = map;
        this.f70478d = str2;
        this.f70479e = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C25205c)) {
                return false;
            }
            C25205c c25205c = (C25205c) obj;
            return l.a(this.f70476b, c25205c.f70476b) && l.a(this.f70477c, c25205c.f70477c) && l.a(this.f70478d, c25205c.f70478d) && this.f70479e == c25205c.f70479e;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f70476b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Map<String, String> map = this.f70477c;
        int hashCode2 = map != null ? map.hashCode() : 0;
        String str2 = this.f70478d;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + this.f70479e;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Response(type=");
        m8728C.append(this.f70476b);
        m8728C.append(", valMap=");
        m8728C.append(this.f70477c);
        m8728C.append(", dateStr=");
        m8728C.append(this.f70478d);
        m8728C.append(", index=");
        return C22128a.m8697J2(m8728C, this.f70479e, ")");
    }
}
