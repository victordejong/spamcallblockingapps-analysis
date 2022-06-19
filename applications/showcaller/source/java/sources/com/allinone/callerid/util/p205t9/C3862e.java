package com.allinone.callerid.util.p205t9;

import java.util.BitSet;
/* renamed from: com.allinone.callerid.util.t9.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/t9/e.class */
public final class C3862e {

    /* renamed from: a */
    private static final char[] f12180a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', ',', '*', '#'};

    /* renamed from: b */
    private static final char[] f12181b = {'2', '2', '2', '3', '3', '3', '4', '4', '4', '5', '5', '5', '6', '6', '6', '7', '7', '7', '7', '8', '8', '8', '9', '9', '9', '9'};

    /* renamed from: c */
    private static final C3857b<StringBuilder> f12182c = new C3857b<>(4);

    /* renamed from: d */
    private static final C3857b<BitSet> f12183d = new C3857b<>(4);

    /* renamed from: a */
    public static String m23930a(String str, AbstractC3856a abstractC3856a) {
        StringBuilder m23925f = m23925f();
        m23925f.append(';');
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt < 128 || charAt < 592 || (7680 <= charAt && charAt < 7935)) {
                m23923h(m23925f, String.valueOf(m23929b(m23927d(charAt))));
            } else {
                String[] mo23933a = abstractC3856a.mo23933a(charAt);
                if (mo23933a == null || mo23933a.length == 0) {
                    m23923h(m23925f, " ");
                } else if (mo23933a.length == 1) {
                    m23923h(m23925f, m23928c(mo23933a[0]));
                } else {
                    String sb = m23925f.toString();
                    StringBuilder m23925f2 = m23925f();
                    m23925f.setLength(0);
                    for (String str2 : mo23933a) {
                        m23925f2.setLength(0);
                        m23925f2.append(sb);
                        m23923h(m23925f2, m23928c(str2));
                        m23925f.append((CharSequence) m23925f2);
                    }
                    m23919l(m23925f2);
                }
            }
        }
        m23925f.delete(m23925f.length() - 1, m23925f.length());
        String sb2 = m23925f.toString();
        m23919l(m23925f);
        return sb2;
    }

    /* renamed from: b */
    public static char m23929b(char c) {
        return (char) ((c - '#') + 67);
    }

    /* renamed from: c */
    private static String m23928c(String str) {
        if (str == null || str.length() == 0) {
            return " ";
        }
        StringBuilder m23925f = m23925f();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (('A' > charAt || charAt > 'Z') && ('a' > charAt || charAt > 'z')) {
                m23925f.setLength(0);
                m23925f.append(' ');
                break;
            }
            char m23927d = m23927d(charAt);
            char c = m23927d;
            if (i == 0) {
                c = m23929b(m23927d);
            }
            m23925f.append(c);
        }
        String sb = m23925f.toString();
        m23919l(m23925f);
        return sb;
    }

    /* renamed from: d */
    public static char m23927d(char c) {
        if (c < 'A' || c > 'Z') {
            if (c >= 'a' && c <= 'z') {
                return f12181b[c - 'a'];
            }
            if (!m23921j(c)) {
                return (char) 0;
            }
            return c;
        }
        return f12181b[c - 'A'];
    }

    /* renamed from: e */
    public static BitSet m23926e() {
        BitSet m23948a = f12183d.m23948a();
        if (m23948a == null) {
            m23948a = new BitSet();
        }
        return m23948a;
    }

    /* renamed from: f */
    static StringBuilder m23925f() {
        StringBuilder m23948a = f12182c.m23948a();
        if (m23948a == null) {
            m23948a = new StringBuilder();
        }
        return m23948a;
    }

    /* renamed from: g */
    public static int m23924g(String str, int i, int i2) {
        int i3;
        int length = str.length();
        int i4 = i2;
        if (i2 >= length) {
            i4 = length - 1;
        }
        int i5 = 0;
        int i6 = i;
        while (i6 < i4) {
            char charAt = str.charAt(i6);
            if (i6 != i && charAt != ' ') {
                i3 = i5;
                if (!m23922i(charAt)) {
                    i6++;
                    i5 = i3;
                }
            }
            i3 = i5 + 1;
            i6++;
            i5 = i3;
        }
        return i5;
    }

    /* renamed from: h */
    private static void m23923h(StringBuilder sb, String str) {
        if (str.length() == 0) {
            return;
        }
        int i = -1;
        while (true) {
            int indexOf = sb.indexOf(String.valueOf(';'), i + 1);
            if (indexOf < 0) {
                return;
            }
            sb.insert(indexOf, str);
            i = indexOf + str.length();
        }
    }

    /* renamed from: i */
    public static boolean m23922i(char c) {
        return c >= 'C' && c <= 'Y';
    }

    /* renamed from: j */
    public static boolean m23921j(char c) {
        return (c >= '0' && c <= '9') || c == ',' || c == '+' || c == '*' || c == '#';
    }

    /* renamed from: k */
    public static void m23920k(BitSet bitSet) {
        bitSet.clear();
        f12183d.m23946c(bitSet);
    }

    /* renamed from: l */
    static void m23919l(StringBuilder sb) {
        sb.setLength(0);
        f12182c.m23946c(sb);
    }
}
