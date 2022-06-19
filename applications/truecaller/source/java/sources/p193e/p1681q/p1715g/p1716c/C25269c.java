package p193e.p1681q.p1715g.p1716c;

import java.util.Date;
import java.util.Map;
import java.util.Objects;
import java.util.StringJoiner;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1715g.p1717d.C25271a;
/* renamed from: e.q.g.c.c */
/* loaded from: classes16-dex2jar.jar:e/q/g/c/c.class */
public class C25269c {

    /* renamed from: a */
    public String f70693a;

    /* renamed from: b */
    public Map<String, String> f70694b;

    /* renamed from: c */
    public String f70695c;

    /* renamed from: d */
    public int f70696d;

    /* renamed from: e */
    public Date f70697e;

    public C25269c() {
    }

    public C25269c(String str, Map<String, String> map, Object obj, int i) {
        this.f70693a = str;
        this.f70694b = map;
        if (obj instanceof String) {
            this.f70695c = (String) obj;
        } else {
            this.f70697e = (Date) obj;
            this.f70695c = C25271a.m3744a().format(this.f70697e);
        }
        this.f70696d = i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C25269c)) {
            return false;
        }
        C25269c c25269c = (C25269c) obj;
        if (this.f70696d != c25269c.f70696d || !this.f70693a.equals(c25269c.f70693a) || !this.f70694b.equals(c25269c.f70694b) || !this.f70695c.equals(c25269c.f70695c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Objects.hash(this.f70693a, this.f70694b, this.f70695c, Integer.valueOf(this.f70696d));
    }

    public String toString() {
        StringJoiner stringJoiner = new StringJoiner(", ", C25269c.class.getSimpleName() + "[", "]");
        StringBuilder m8728C = C22128a.m8728C("type='");
        m8728C.append(this.f70693a);
        m8728C.append("'");
        StringJoiner add = stringJoiner.add(m8728C.toString());
        StringBuilder m8728C2 = C22128a.m8728C("valMap=");
        m8728C2.append(this.f70694b);
        StringJoiner add2 = add.add(m8728C2.toString());
        StringBuilder m8728C3 = C22128a.m8728C("str='");
        m8728C3.append(this.f70695c);
        m8728C3.append("'");
        StringJoiner add3 = add2.add(m8728C3.toString());
        StringBuilder m8728C4 = C22128a.m8728C("index=");
        m8728C4.append(this.f70696d);
        StringJoiner add4 = add3.add(m8728C4.toString());
        StringBuilder m8728C5 = C22128a.m8728C("date=");
        m8728C5.append(this.f70697e);
        return add4.add(m8728C5.toString()).toString();
    }
}
