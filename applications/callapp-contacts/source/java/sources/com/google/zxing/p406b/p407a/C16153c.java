package com.google.zxing.p406b.p407a;

import io.objectbox.model.PropertyFlags;
/* renamed from: com.google.zxing.b.a.c */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/c.class */
public class C16153c implements AbstractC16157g {
    /* renamed from: a */
    private int m7742a(C16158h c16158h, StringBuilder sb, StringBuilder sb2, int i) {
        int length = sb.length();
        sb.delete(length - i, length);
        c16158h.f57084f--;
        int mo7705a = mo7705a(c16158h.m7735a(), sb2);
        c16158h.f57086h = null;
        return mo7705a;
    }

    /* renamed from: a */
    public static void m7743a(C16158h c16158h, StringBuilder sb) {
        int charAt = (sb.charAt(0) * 1600) + (sb.charAt(1) * '(') + sb.charAt(2) + 1;
        c16158h.m7732a(new String(new char[]{(char) (charAt / PropertyFlags.INDEX_PARTIAL_SKIP_NULL), (char) (charAt % PropertyFlags.INDEX_PARTIAL_SKIP_NULL)}));
        sb.delete(0, 3);
    }

    /* renamed from: a */
    public int mo7706a() {
        return 1;
    }

    /* renamed from: a */
    int mo7705a(char c, StringBuilder sb) {
        if (c == ' ') {
            sb.append((char) 3);
            return 1;
        } else if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        } else if (c >= 'A' && c <= 'Z') {
            sb.append((char) ((c - 'A') + 14));
            return 1;
        } else if (c < ' ') {
            sb.append((char) 0);
            sb.append(c);
            return 2;
        } else if (c >= '!' && c <= '/') {
            sb.append((char) 1);
            sb.append((char) (c - '!'));
            return 2;
        } else if (c >= ':' && c <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c - ':') + 15));
            return 2;
        } else if (c >= '[' && c <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c - '[') + 22));
            return 2;
        } else if (c < '`' || c > 127) {
            sb.append("\u0001\u001e");
            return mo7705a((char) (c - 128), sb) + 2;
        } else {
            sb.append((char) 2);
            sb.append((char) (c - '`'));
            return 2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0079, code lost:
        if (r0 > 2) goto L13;
     */
    @Override // com.google.zxing.p406b.p407a.AbstractC16157g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo7704a(com.google.zxing.p406b.p407a.C16158h r7) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.p406b.p407a.C16153c.mo7704a(com.google.zxing.b.a.h):void");
    }

    /* renamed from: b */
    void mo7703b(C16158h c16158h, StringBuilder sb) {
        int length = sb.length() / 3;
        int length2 = sb.length() % 3;
        int length3 = c16158h.f57083e.length() + (length << 1);
        c16158h.m7733a(length3);
        int i = c16158h.f57086h.f57094b - length3;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                m7743a(c16158h, sb);
            }
            if (c16158h.m7731b()) {
                c16158h.m7734a((char) 254);
            }
        } else if (i == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                m7743a(c16158h, sb);
            }
            if (c16158h.m7731b()) {
                c16158h.m7734a((char) 254);
            }
            c16158h.f57084f--;
        } else if (length2 != 0) {
            throw new IllegalStateException("Unexpected case. Please report!");
        } else {
            while (sb.length() >= 3) {
                m7743a(c16158h, sb);
            }
            if (i > 0 || c16158h.m7731b()) {
                c16158h.m7734a((char) 254);
            }
        }
        c16158h.f57085g = 0;
    }
}
