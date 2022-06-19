package com.google.zxing.p172b.p173a;
/* renamed from: com.google.zxing.b.a.c */
/* loaded from: classes-dex2jar.jar:com/google/zxing/b/a/c.class */
public class C5083c implements AbstractC5087g {
    /* renamed from: a */
    private int m1559a(C5088h c5088h, StringBuilder sb, StringBuilder sb2, int i) {
        int length = sb.length();
        sb.delete(length - i, length);
        c5088h.f21531a--;
        int mo1493a = mo1493a(c5088h.m1537b(), sb2);
        c5088h.m1526k();
        return mo1493a;
    }

    /* renamed from: a */
    private static String m1558a(CharSequence charSequence, int i) {
        int charAt = (charSequence.charAt(i) * 1600) + (charSequence.charAt(i + 1) * '(') + charSequence.charAt(i + 2) + 1;
        return new String(new char[]{(char) (charAt / 256), (char) (charAt % 256)});
    }

    /* renamed from: a */
    public static void m1560a(C5088h c5088h, StringBuilder sb) {
        c5088h.m1538a(m1558a(sb, 0));
        sb.delete(0, 3);
    }

    /* renamed from: a */
    public int mo1494a() {
        return 1;
    }

    /* renamed from: a */
    int mo1493a(char c, StringBuilder sb) {
        int i = 1;
        if (c == ' ') {
            sb.append((char) 3);
        } else if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
        } else if (c >= 'A' && c <= 'Z') {
            sb.append((char) ((c - 'A') + 14));
        } else if (c < ' ') {
            sb.append((char) 0);
            sb.append(c);
            i = 2;
        } else if (c >= '!' && c <= '/') {
            sb.append((char) 1);
            sb.append((char) (c - '!'));
            i = 2;
        } else if (c >= ':' && c <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c - ':') + 15));
            i = 2;
        } else if (c >= '[' && c <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c - '[') + 22));
            i = 2;
        } else if (c < '`' || c > 127) {
            sb.append("\u0001\u001e");
            i = mo1493a((char) (c - 128), sb) + 2;
        } else {
            sb.append((char) 2);
            sb.append((char) (c - '`'));
            i = 2;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0072, code lost:
        if (r0 > 2) goto L13;
     */
    @Override // com.google.zxing.p172b.p173a.AbstractC5087g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo1492a(com.google.zxing.p172b.p173a.C5088h r7) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p172b.p173a.C5083c.mo1492a(com.google.zxing.b.a.h):void");
    }

    /* renamed from: b */
    void mo1491b(C5088h c5088h, StringBuilder sb) {
        int length = sb.length() / 3;
        int length2 = sb.length() % 3;
        int m1533d = (length << 1) + c5088h.m1533d();
        c5088h.m1534c(m1533d);
        int m1498f = c5088h.m1528i().m1498f() - m1533d;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                m1560a(c5088h, sb);
            }
            if (c5088h.m1530g()) {
                c5088h.m1542a((char) 254);
            }
        } else if (m1498f == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                m1560a(c5088h, sb);
            }
            if (c5088h.m1530g()) {
                c5088h.m1542a((char) 254);
            }
            c5088h.f21531a--;
        } else if (length2 != 0) {
            throw new IllegalStateException("Unexpected case. Please report!");
        } else {
            while (sb.length() >= 3) {
                m1560a(c5088h, sb);
            }
            if (m1498f > 0 || c5088h.m1530g()) {
                c5088h.m1542a((char) 254);
            }
        }
        c5088h.m1536b(0);
    }
}
