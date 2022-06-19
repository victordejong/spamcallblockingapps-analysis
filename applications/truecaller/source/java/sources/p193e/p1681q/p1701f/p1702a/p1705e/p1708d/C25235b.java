package p193e.p1681q.p1701f.p1702a.p1705e.p1708d;

import e.q.f.a.f.n;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1690c.p1692b.AbstractC25194a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.q.f.a.e.d.b */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/e/d/b.class */
public class C25235b {

    /* renamed from: a */
    public String f70579a;

    /* renamed from: b */
    public String f70580b;

    /* renamed from: c */
    public AbstractC25194a f70581c;

    /* renamed from: d */
    public List<C25235b> f70582d;

    /* renamed from: e */
    public List<C25235b> f70583e;

    /* renamed from: f */
    public String f70584f;

    /* renamed from: g */
    public int f70585g;

    /* renamed from: h */
    public boolean f70586h;

    /* renamed from: i */
    public boolean f70587i;

    /* renamed from: j */
    public boolean f70588j;

    public C25235b() {
        this.f70585g = -1;
        this.f70586h = false;
        this.f70587i = false;
        this.f70588j = false;
        this.f70582d = new ArrayList();
        this.f70583e = new ArrayList();
        this.f70581c = new n();
    }

    public C25235b(String str, String str2, int i, String... strArr) {
        this(str, str, str2, i, strArr);
    }

    public C25235b(String str, String str2, String str3, int i, String... strArr) {
        this.f70585g = -1;
        this.f70586h = false;
        this.f70587i = false;
        this.f70588j = false;
        this.f70579a = str;
        this.f70580b = str2;
        String m3900h0 = C25225a.m3900h0(str3);
        this.f70584f = !m3900h0.startsWith("\\u") ? m3900h0 : str3;
        this.f70585g = i;
        this.f70581c = new n();
        if (strArr == null || strArr.length < 2) {
            return;
        }
        if (strArr.length % 2 != 0) {
            throw new RuntimeException("Please pass both Key and Value while instantiating GDO");
        }
        for (int i2 = 0; i2 < strArr.length; i2 += 2) {
            int i3 = i2 + 1;
            if (strArr[i3] != null) {
                this.f70581c.e(strArr[i2], strArr[i3]);
            }
        }
    }

    /* renamed from: a */
    public void m3781a(String str, String str2) {
        if (str2 != null) {
            n nVar = this.f70581c;
            Objects.requireNonNull(nVar);
            String str3 = (String) nVar.b.put(str, str2);
        }
    }

    /* renamed from: b */
    public C25235b m3780b(String str) {
        List<C25235b> list = this.f70582d;
        if (list != null) {
            for (C25235b c25235b : list) {
                if (c25235b.f70579a.equals(str)) {
                    return c25235b;
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: c */
    public C25235b m3779c() {
        if (m3777e()) {
            return (C25235b) C22128a.m8714F1(this.f70582d, -1);
        }
        return null;
    }

    /* renamed from: d */
    public C25235b m3778d() {
        C25235b c25235b = null;
        for (C25235b m3779c = m3779c(); m3779c != null; m3779c = m3779c.m3779c()) {
            c25235b = m3779c;
        }
        return c25235b;
    }

    /* renamed from: e */
    public boolean m3777e() {
        List<C25235b> list = this.f70582d;
        return list != null && list.size() > 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C25235b.class != obj.getClass()) {
            return false;
        }
        C25235b c25235b = (C25235b) obj;
        if (this.f70585g != c25235b.f70585g || !this.f70579a.equals(c25235b.f70579a)) {
            return false;
        }
        String str = this.f70584f;
        String str2 = c25235b.f70584f;
        if (str != null) {
            z = str.equals(str2);
        } else if (str2 != null) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public boolean m3776f() {
        return this.f70579a.equals("GDO_NONDET");
    }

    /* renamed from: g */
    public String m3775g() {
        return !this.f70579a.equals("GDO_NONDET") ? this.f70579a : this.f70584f.replaceAll("[\"'\\\\]", "");
    }

    public int hashCode() {
        int hashCode = this.f70579a.hashCode();
        String str = this.f70584f;
        return (((hashCode * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.f70585g;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("{\"token\":\"");
        m8728C.append(this.f70579a);
        m8728C.append("\",\"str\":\"");
        m8728C.append(this.f70584f);
        m8728C.append("\",\"values\":");
        StringBuilder sb = new StringBuilder("{");
        n nVar = this.f70581c;
        if (nVar != null) {
            for (Map.Entry entry : nVar.b()) {
                StringBuilder m8728C2 = C22128a.m8728C("\"");
                m8728C2.append((String) entry.getKey());
                m8728C2.append("\":\"");
                m8728C2.append(C25225a.m3900h0((String) entry.getValue()));
                m8728C2.append("\"");
                sb.append(m8728C2.toString());
                sb.append(",");
            }
        }
        if (sb.length() > 1) {
            sb.setLength(sb.length() - 1);
        }
        sb.append("}");
        m8728C.append(sb.toString());
        m8728C.append("}");
        return m8728C.toString();
    }
}
