package p193e.p1681q.p1693d.p1697f;

import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import s1.p;
import s1.z.c.h0;
import s1.z.c.l;
/* renamed from: e.q.d.f.a */
/* loaded from: classes16-dex2jar.jar:e/q/d/f/a.class */
public final class C25207a {

    /* renamed from: c */
    public String f70483c;

    /* renamed from: a */
    public Map<String, String> f70481a = new LinkedHashMap();

    /* renamed from: b */
    public final Map<String, String> f70482b = new LinkedHashMap();

    /* renamed from: d */
    public List<String> f70484d = new ArrayList();

    /* renamed from: a */
    public final boolean m4093a(String str) {
        return l.a(str, "d") || l.a(str, "MM") || l.a(str, "MMM") || l.a(str, "yy") || l.a(str, "yyyy") || l.a(str, "HH") || l.a(str, "mm") || l.a(str, "ss");
    }

    /* renamed from: b */
    public final void m4092b(char c) {
        m4083k(this.f70483c, l.j(this.f70481a.get(this.f70483c), Character.valueOf(c)));
    }

    /* renamed from: c */
    public final boolean m4091c(String str) {
        l.f(str, AnalyticsConstants.KEY);
        return this.f70481a.containsKey(str);
    }

    /* renamed from: d */
    public final void m4090d(String str, String str2) {
        l.f(str, "kOld");
        l.f(str2, "kNew");
        if (this.f70481a.containsKey(str)) {
            if (!this.f70481a.containsKey(str2)) {
                String remove = this.f70481a.remove(str);
                if (remove != null) {
                    m4083k(str2, remove);
                }
            } else {
                m4083k(str2, l.j(this.f70481a.get(str2), this.f70481a.remove(str)));
            }
            this.f70483c = str2;
        }
    }

    /* renamed from: e */
    public final String m4089e(String str) {
        l.f(str, AnalyticsConstants.KEY);
        return this.f70481a.get(str);
    }

    /* renamed from: f */
    public final Integer m4088f() {
        String str = this.f70481a.get("INDEX");
        return str != null ? Integer.valueOf(Integer.parseInt(str)) : null;
    }

    /* renamed from: g */
    public final String m4087g() {
        return this.f70481a.get("TYP");
    }

    /* renamed from: h */
    public final Map<String, String> m4086h() {
        return this.f70482b;
    }

    /* renamed from: i */
    public final void m4085i() {
        String str = this.f70481a.get(this.f70483c);
        if (str != null) {
            String str2 = this.f70483c;
            String substring = str.substring(0, str.length() - 1);
            l.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            m4083k(str2, substring);
        }
    }

    /* renamed from: j */
    public final void m4084j(String str, char c) {
        l.f(str, AnalyticsConstants.KEY);
        if (!this.f70484d.contains(str)) {
            this.f70484d.add(str);
        }
        this.f70481a.put(str, String.valueOf(c));
        this.f70483c = str;
    }

    /* renamed from: k */
    public final void m4083k(String str, String str2) {
        l.f(str2, "value");
        if (!this.f70484d.contains(str)) {
            this.f70484d.add(str);
        }
        if (str != null) {
            this.f70481a.put(str, str2);
        }
        this.f70483c = str;
    }

    /* renamed from: l */
    public final void m4082l(C25207a c25207a) {
        l.f(c25207a, "fsaContextMap");
        for (Map.Entry<String, String> entry : c25207a.f70481a.entrySet()) {
            this.f70481a.put(entry.getKey(), entry.getValue());
        }
    }

    /* renamed from: m */
    public final void m4081m(String str) {
        l.f(str, AnalyticsConstants.KEY);
        this.f70481a.remove(str);
    }

    /* renamed from: n */
    public final void m4080n(String str) {
        this.f70481a.put("TYP", str);
    }

    /* renamed from: o */
    public final void m4079o(String str, String str2) {
        l.f(str, "type");
        this.f70481a.put("TYP", str);
        if (str2 != null) {
            StringBuilder sb = new StringBuilder();
            for (String str3 : this.f70484d) {
                Map<String, String> map = this.f70481a;
                if (map == null) {
                    throw new p("null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>");
                }
                sb.append((String) h0.b(map).remove(str3));
            }
            this.f70484d = new ArrayList();
            String sb2 = sb.toString();
            l.b(sb2, "sb.toString()");
            m4083k(str2, sb2);
        }
    }

    /* renamed from: p */
    public final void m4078p(String str, String str2) {
        l.f(str, AnalyticsConstants.NAME);
        l.f(str2, "val");
        this.f70482b.put(str, str2);
    }

    /* renamed from: q */
    public final void m4077q(char c) {
        String str = this.f70483c;
        if (str == null) {
            return;
        }
        int hashCode = str.hashCode();
        if (hashCode == 100) {
            if (!str.equals("d")) {
                return;
            }
            m4084j("MM", c);
            this.f70483c = "MM";
        } else if (hashCode == 2304) {
            if (!str.equals("HH")) {
                return;
            }
            m4084j("mm", c);
            this.f70483c = "mm";
        } else {
            if (hashCode != 2464) {
                if (hashCode == 3488) {
                    if (!str.equals("mm")) {
                        return;
                    }
                    m4084j("ss", c);
                    this.f70483c = "ss";
                    return;
                } else if (hashCode == 3872) {
                    if (!str.equals("yy")) {
                        return;
                    }
                    m4083k("yyyy", l.j(this.f70481a.remove("yy"), Character.valueOf(c)));
                    this.f70483c = "yyyy";
                    return;
                } else if (hashCode != 76461 || !str.equals("MMM")) {
                    return;
                }
            } else if (!str.equals("MM")) {
                return;
            }
            m4084j("yy", c);
            this.f70483c = "yy";
        }
    }
}
