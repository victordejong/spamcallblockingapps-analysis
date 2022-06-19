package p193e.p1681q.p1701f.p1702a.p1704d;

import e.q.f.a.c.d;
/* renamed from: e.q.f.a.d.c */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/d/c.class */
public class C25227c {
    /* renamed from: a */
    public static boolean m3807a(d dVar, String str, int i, char c) {
        int i2 = i + 2;
        if (i2 < str.length()) {
            for (Character ch : ((d) dVar.d.get(Character.valueOf(c))).d.keySet()) {
                if (ch.charValue() == Character.toLowerCase(str.charAt(i + 1))) {
                    if (((d) ((d) dVar.d.get(Character.valueOf(c))).d.get(ch)).f70532b) {
                        return true;
                    }
                    for (Character ch2 : ((d) ((d) dVar.d.get(Character.valueOf(c))).d.get(ch)).d.keySet()) {
                        if (ch2.charValue() == Character.toLowerCase(str.charAt(i2))) {
                            return true;
                        }
                    }
                    continue;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m3806b(String str, int i) {
        return i == str.length() || str.charAt(i) == '@' || m3804d(str.charAt(i));
    }

    /* renamed from: c */
    public static int m3805c(String str, int i) {
        String substring = str.substring(i);
        int i2 = 0;
        while (i2 < substring.length() && !m3804d(substring.charAt(i2))) {
            i2++;
        }
        return i2 + i;
    }

    /* renamed from: d */
    public static boolean m3804d(char c) {
        return c == ' ' || c == ',' || c == ':' || c == '.' || c == ')' || c == '/' || c == '-' || c == '(' || c == '\"' || c == '=' || c == '<' || c == '>' || c == '\r' || c == '\n' || c == '!';
    }

    /* renamed from: e */
    public static boolean m3803e(char c) {
        return c == ' ' || c == ',' || c == ':' || c == '.' || c == '/' || c == '-' || c == '=' || c == '\r' || c == '\n';
    }

    /* renamed from: f */
    public static boolean m3802f(String str, int i, char c) {
        return m3804d(str.charAt(i)) || c == '+' || c == '\\';
    }

    /* renamed from: g */
    public static d m3801g(d dVar, String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!dVar.d.containsKey(Character.valueOf(str.charAt(i)))) {
                return null;
            }
            dVar = (d) dVar.d.get(Character.valueOf(str.charAt(i)));
        }
        if (!dVar.f70532b) {
            dVar = null;
        }
        return dVar;
    }
}
