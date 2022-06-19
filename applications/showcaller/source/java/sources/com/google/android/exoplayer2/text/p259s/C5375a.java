package com.google.android.exoplayer2.text.p259s;

import android.text.TextUtils;
import com.google.android.exoplayer2.util.C5514h;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.text.s.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/s/a.class */
final class C5375a {

    /* renamed from: a */
    private static final Pattern f17195a = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: b */
    private final C5536v f17196b = new C5536v();

    /* renamed from: c */
    private final StringBuilder f17197c = new StringBuilder();

    /* renamed from: a */
    private void m19453a(C5378d c5378d, String str) {
        if ("".equals(str)) {
            return;
        }
        int indexOf = str.indexOf(91);
        String str2 = str;
        if (indexOf != -1) {
            Matcher matcher = f17195a.matcher(str.substring(indexOf));
            if (matcher.matches()) {
                c5378d.m19418v(matcher.group(1));
            }
            str2 = str.substring(0, indexOf);
        }
        String[] m18818n0 = C5515h0.m18818n0(str2, "\\.");
        String str3 = m18818n0[0];
        int indexOf2 = str3.indexOf(35);
        if (indexOf2 != -1) {
            c5378d.m19419u(str3.substring(0, indexOf2));
            c5378d.m19420t(str3.substring(indexOf2 + 1));
        } else {
            c5378d.m19419u(str3);
        }
        if (m18818n0.length <= 1) {
            return;
        }
        c5378d.m19421s((String[]) C5515h0.m18832g0(m18818n0, 1, m18818n0.length));
    }

    /* renamed from: b */
    private static boolean m19452b(C5536v c5536v) {
        int m18676c = c5536v.m18676c();
        int m18675d = c5536v.m18675d();
        byte[] bArr = c5536v.f17941a;
        if (m18676c + 2 <= m18675d) {
            int i = m18676c + 1;
            if (bArr[m18676c] != 47) {
                return false;
            }
            int i2 = i + 1;
            if (bArr[i] != 42) {
                return false;
            }
            while (true) {
                int i3 = i2 + 1;
                if (i3 >= m18675d) {
                    c5536v.m18679N(m18675d - c5536v.m18676c());
                    return true;
                } else if (((char) bArr[i2]) == '*' && ((char) bArr[i3]) == '/') {
                    i2 = i3 + 1;
                    m18675d = i2;
                } else {
                    i2 = i3;
                }
            }
        } else {
            return false;
        }
    }

    /* renamed from: c */
    private static boolean m19451c(C5536v c5536v) {
        char m19444j = m19444j(c5536v, c5536v.m18676c());
        if (m19444j == '\t' || m19444j == '\n' || m19444j == '\f' || m19444j == '\r' || m19444j == ' ') {
            c5536v.m18679N(1);
            return true;
        }
        return false;
    }

    /* renamed from: e */
    private static String m19449e(C5536v c5536v, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int m18676c = c5536v.m18676c();
        int m18675d = c5536v.m18675d();
        while (m18676c < m18675d && !z) {
            char c = (char) c5536v.f17941a[m18676c];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                z = true;
            } else {
                m18676c++;
                sb.append(c);
            }
        }
        c5536v.m18679N(m18676c - c5536v.m18676c());
        return sb.toString();
    }

    /* renamed from: f */
    static String m19448f(C5536v c5536v, StringBuilder sb) {
        m19441m(c5536v);
        if (c5536v.m18678a() == 0) {
            return null;
        }
        String m19449e = m19449e(c5536v, sb);
        if (!"".equals(m19449e)) {
            return m19449e;
        }
        return "" + ((char) c5536v.m18653z());
    }

    /* renamed from: g */
    private static String m19447g(C5536v c5536v, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int m18676c = c5536v.m18676c();
            String m19448f = m19448f(c5536v, sb);
            if (m19448f == null) {
                return null;
            }
            if ("}".equals(m19448f) || ";".equals(m19448f)) {
                c5536v.m18680M(m18676c);
                z = true;
            } else {
                sb2.append(m19448f);
            }
        }
        return sb2.toString();
    }

    /* renamed from: h */
    private static String m19446h(C5536v c5536v, StringBuilder sb) {
        m19441m(c5536v);
        if (c5536v.m18678a() >= 5 && "::cue".equals(c5536v.m18656w(5))) {
            int m18676c = c5536v.m18676c();
            String m19448f = m19448f(c5536v, sb);
            if (m19448f == null) {
                return null;
            }
            if ("{".equals(m19448f)) {
                c5536v.m18680M(m18676c);
                return "";
            }
            String m19443k = "(".equals(m19448f) ? m19443k(c5536v) : null;
            if (")".equals(m19448f(c5536v, sb))) {
                return m19443k;
            }
            return null;
        }
        return null;
    }

    /* renamed from: i */
    private static void m19445i(C5536v c5536v, C5378d c5378d, StringBuilder sb) {
        m19441m(c5536v);
        String m19449e = m19449e(c5536v, sb);
        if (!"".equals(m19449e) && ":".equals(m19448f(c5536v, sb))) {
            m19441m(c5536v);
            String m19447g = m19447g(c5536v, sb);
            if (m19447g == null || "".equals(m19447g)) {
                return;
            }
            int m18676c = c5536v.m18676c();
            String m19448f = m19448f(c5536v, sb);
            if (!";".equals(m19448f)) {
                if (!"}".equals(m19448f)) {
                    return;
                }
                c5536v.m18680M(m18676c);
            }
            if ("color".equals(m19449e)) {
                c5378d.m19424p(C5514h.m18874c(m19447g));
            } else if ("background-color".equals(m19449e)) {
                c5378d.m19426n(C5514h.m18874c(m19447g));
            } else if ("text-decoration".equals(m19449e)) {
                if (!"underline".equals(m19447g)) {
                    return;
                }
                c5378d.m19417w(true);
            } else if ("font-family".equals(m19449e)) {
                c5378d.m19423q(m19447g);
            } else if ("font-weight".equals(m19449e)) {
                if (!"bold".equals(m19447g)) {
                    return;
                }
                c5378d.m19425o(true);
            } else if (!"font-style".equals(m19449e) || !"italic".equals(m19447g)) {
            } else {
                c5378d.m19422r(true);
            }
        }
    }

    /* renamed from: j */
    private static char m19444j(C5536v c5536v, int i) {
        return (char) c5536v.f17941a[i];
    }

    /* renamed from: k */
    private static String m19443k(C5536v c5536v) {
        int m18676c = c5536v.m18676c();
        int m18675d = c5536v.m18675d();
        boolean z = false;
        while (m18676c < m18675d && !z) {
            z = ((char) c5536v.f17941a[m18676c]) == ')';
            m18676c++;
        }
        return c5536v.m18656w((m18676c - 1) - c5536v.m18676c()).trim();
    }

    /* renamed from: l */
    static void m19442l(C5536v c5536v) {
        do {
        } while (!TextUtils.isEmpty(c5536v.m18666m()));
    }

    /* renamed from: m */
    static void m19441m(C5536v c5536v) {
        while (true) {
            boolean z = true;
            while (true) {
                boolean z2 = z;
                if (c5536v.m18678a() <= 0 || !z2) {
                    return;
                }
                if (!m19451c(c5536v) && !m19452b(c5536v)) {
                    z = false;
                }
            }
        }
    }

    /* renamed from: d */
    public List<C5378d> m19450d(C5536v c5536v) {
        this.f17197c.setLength(0);
        int m18676c = c5536v.m18676c();
        m19442l(c5536v);
        this.f17196b.m18682K(c5536v.f17941a, c5536v.m18676c());
        this.f17196b.m18680M(m18676c);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String m19446h = m19446h(this.f17196b, this.f17197c);
            if (m19446h != null && "{".equals(m19448f(this.f17196b, this.f17197c))) {
                C5378d c5378d = new C5378d();
                m19453a(c5378d, m19446h);
                String str = null;
                boolean z = false;
                while (!z) {
                    int m18676c2 = this.f17196b.m18676c();
                    str = m19448f(this.f17196b, this.f17197c);
                    z = str == null || "}".equals(str);
                    if (!z) {
                        this.f17196b.m18680M(m18676c2);
                        m19445i(this.f17196b, c5378d, this.f17197c);
                    }
                }
                if ("}".equals(str)) {
                    arrayList.add(c5378d);
                }
            }
            return arrayList;
        }
    }
}
