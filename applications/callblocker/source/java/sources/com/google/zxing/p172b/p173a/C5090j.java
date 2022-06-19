package com.google.zxing.p172b.p173a;

import com.google.zxing.C5079b;
import java.util.Arrays;
/* renamed from: com.google.zxing.b.a.j */
/* loaded from: classes-dex2jar.jar:com/google/zxing/b/a/j.class */
public final class C5090j {
    /* renamed from: a */
    private static char m1520a(char c, int i) {
        int i2 = ((i * 149) % 253) + 1 + c;
        if (i2 > 254) {
            i2 -= 254;
        }
        return (char) i2;
    }

    /* renamed from: a */
    public static int m1519a(CharSequence charSequence, int i) {
        int i2 = 0;
        int length = charSequence.length();
        if (i < length) {
            char charAt = charSequence.charAt(i);
            int i3 = i;
            int i4 = 0;
            char c = charAt;
            while (true) {
                i2 = i4;
                if (!m1521a(c)) {
                    break;
                }
                i2 = i4;
                if (i3 >= length) {
                    break;
                }
                int i5 = i4 + 1;
                int i6 = i3 + 1;
                i4 = i5;
                i3 = i6;
                if (i6 < length) {
                    c = charSequence.charAt(i6);
                    i4 = i5;
                    i3 = i6;
                }
            }
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x01dc, code lost:
        r7 = 5;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m1518a(java.lang.CharSequence r5, int r6, int r7) {
        /*
            Method dump skipped, instructions count: 904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p172b.p173a.C5090j.m1518a(java.lang.CharSequence, int, int):int");
    }

    /* renamed from: a */
    private static int m1516a(byte[] bArr) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < 6) {
                i++;
                i2 = bArr[i] + i3;
            } else {
                return i3;
            }
        }
    }

    /* renamed from: a */
    private static int m1515a(float[] fArr, int[] iArr, int i, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        int i2 = i;
        int i3 = 0;
        while (i3 < 6) {
            iArr[i3] = (int) Math.ceil(fArr[i3]);
            int i4 = iArr[i3];
            int i5 = i2;
            if (i2 > i4) {
                Arrays.fill(bArr, (byte) 0);
                i5 = i4;
            }
            if (i5 == i4) {
                bArr[i3] = (byte) (bArr[i3] + 1);
            }
            i3++;
            i2 = i5;
        }
        return i2;
    }

    /* renamed from: a */
    public static String m1517a(String str, EnumC5092l enumC5092l, C5079b c5079b, C5079b c5079b2) {
        int i;
        C5081a c5081a = new C5081a();
        C5083c c5083c = new C5083c();
        C5093m c5093m = new C5093m();
        C5094n c5094n = new C5094n();
        C5086f c5086f = new C5086f();
        C5082b c5082b = new C5082b();
        C5088h c5088h = new C5088h(str);
        c5088h.m1540a(enumC5092l);
        c5088h.m1539a(c5079b, c5079b2);
        if (!str.startsWith("[)>\u001e05\u001d") || !str.endsWith("\u001e\u0004")) {
            i = 0;
            if (str.startsWith("[)>\u001e06\u001d")) {
                i = 0;
                if (str.endsWith("\u001e\u0004")) {
                    c5088h.m1542a((char) 237);
                    c5088h.m1541a(2);
                    c5088h.f21531a += 7;
                    i = 0;
                }
            }
        } else {
            c5088h.m1542a((char) 236);
            c5088h.m1541a(2);
            c5088h.f21531a += 7;
            i = 0;
        }
        while (c5088h.m1530g()) {
            new AbstractC5087g[]{c5081a, c5083c, c5093m, c5094n, c5086f, c5082b}[i].mo1492a(c5088h);
            if (c5088h.m1532e() >= 0) {
                i = c5088h.m1532e();
                c5088h.m1531f();
            }
        }
        int m1533d = c5088h.m1533d();
        c5088h.m1527j();
        int m1498f = c5088h.m1528i().m1498f();
        if (m1533d < m1498f && i != 0 && i != 5 && i != 4) {
            c5088h.m1542a((char) 254);
        }
        StringBuilder m1535c = c5088h.m1535c();
        if (m1535c.length() < m1498f) {
            m1535c.append((char) 129);
        }
        while (m1535c.length() < m1498f) {
            m1535c.append(m1520a((char) 129, m1535c.length() + 1));
        }
        return c5088h.m1535c().toString();
    }

    /* renamed from: a */
    public static boolean m1521a(char c) {
        return c >= '0' && c <= '9';
    }

    /* renamed from: b */
    public static boolean m1514b(char c) {
        return c >= 128 && c <= 255;
    }

    /* renamed from: c */
    public static void m1513c(char c) {
        String hexString = Integer.toHexString(c);
        throw new IllegalArgumentException("Illegal character: " + c + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    /* renamed from: d */
    private static boolean m1512d(char c) {
        return c == ' ' || (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z');
    }

    /* renamed from: e */
    private static boolean m1511e(char c) {
        return c == ' ' || (c >= '0' && c <= '9') || (c >= 'a' && c <= 'z');
    }

    /* renamed from: f */
    private static boolean m1510f(char c) {
        return m1509g(c) || c == ' ' || (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z');
    }

    /* renamed from: g */
    private static boolean m1509g(char c) {
        return c == '\r' || c == '*' || c == '>';
    }

    /* renamed from: h */
    private static boolean m1508h(char c) {
        return c >= ' ' && c <= '^';
    }

    /* renamed from: i */
    private static boolean m1507i(char c) {
        return false;
    }
}
