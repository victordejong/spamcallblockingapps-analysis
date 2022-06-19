package p193e.p1681q.p1693d.p1697f;

import p193e.p1681q.p1693d.p1696e.C25203a;
import p193e.p1681q.p1693d.p1696e.C25204b;
import p193e.p1681q.p1693d.p1696e.C25206d;
import s1.z.c.l;
/* renamed from: e.q.d.f.b */
/* loaded from: classes16-dex2jar.jar:e/q/d/f/b.class */
public final class C25208b {
    /* renamed from: a */
    public static final C25204b<Integer, String> m4076a(C25206d c25206d, String str, String str2) {
        l.f(c25206d, "root");
        l.f(str, "type");
        l.f(str2, "word");
        C25203a c25203a = c25206d.f70480a.get(str);
        C25204b<Integer, String> c25204b = null;
        if (c25203a != null) {
            int i = 0;
            while (i < str2.length()) {
                char charAt = str2.charAt(i);
                if (c25203a != null && c25203a.f70469a && !c25203a.f70471c.containsKey(Character.valueOf(charAt))) {
                    if (m4071f(charAt) || charAt == '.' || charAt == ' ' || charAt == '-' || charAt == ',' || charAt == '/' || charAt == ')' || charAt == '+' || charAt == '*' || charAt == '\r' || charAt == '\n' || charAt == '\'') {
                        String str3 = c25203a.f70472d;
                        C25204b<Integer, String> c25204b2 = null;
                        if (str3 != null) {
                            c25204b2 = new C25204b<>(Integer.valueOf(i - 1), str3);
                        }
                        return c25204b2;
                    }
                }
                if (c25203a == null || !c25203a.f70470b || !c25203a.f70471c.containsKey(Character.valueOf(charAt))) {
                    break;
                }
                c25203a = c25203a.f70471c.get(Character.valueOf(charAt));
                i++;
            }
            c25204b = null;
            if (c25203a != null) {
                c25204b = null;
                if (c25203a.f70469a) {
                    c25204b = null;
                    if (i == str2.length()) {
                        String str4 = c25203a.f70472d;
                        c25204b = null;
                        if (str4 != null) {
                            c25204b = new C25204b<>(Integer.valueOf(i - 1), str4);
                        }
                    }
                }
            }
        }
        return c25204b;
    }

    /* renamed from: b */
    public static final boolean m4075b(char c) {
        return ('A' <= c && 'Z' >= c) || ('a' <= c && 'z' >= c);
    }

    /* renamed from: c */
    public static final boolean m4074c(char c) {
        return c == '/' || c == '-' || c == ' ';
    }

    /* renamed from: d */
    public static final boolean m4073d(char c, char c2) {
        return ((c == '0' || c == '1') && m4071f(c2)) || (c == '2' && (c2 == '0' || c2 == '1' || c2 == '2' || c2 == '3' || c2 == '4'));
    }

    /* renamed from: e */
    public static final boolean m4072e(char c) {
        return 'a' <= c && 'z' >= c;
    }

    /* renamed from: f */
    public static final boolean m4071f(char c) {
        return '0' <= c && '9' >= c;
    }

    /* renamed from: g */
    public static final boolean m4070g(String str) {
        if (str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!m4071f(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: h */
    public static final boolean m4069h(char c) {
        return c == ':';
    }
}
