package com.google.zxing.b.a;

import io.objectbox.model.PropertyFlags;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/c.class */
public class c implements g {
    private int a(h hVar, StringBuilder sb, StringBuilder sb2, int i) {
        int length = sb.length();
        sb.delete(length - i, length);
        hVar.f--;
        int a2 = a(hVar.a(), sb2);
        hVar.h = null;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(h hVar, StringBuilder sb) {
        int charAt = (sb.charAt(0) * 1600) + (sb.charAt(1) * '(') + sb.charAt(2) + 1;
        hVar.a(new String(new char[]{(char) (charAt / PropertyFlags.INDEX_PARTIAL_SKIP_NULL), (char) (charAt % PropertyFlags.INDEX_PARTIAL_SKIP_NULL)}));
        sb.delete(0, 3);
    }

    public int a() {
        return 1;
    }

    int a(char c2, StringBuilder sb) {
        if (c2 == ' ') {
            sb.append((char) 3);
            return 1;
        } else if (c2 >= '0' && c2 <= '9') {
            sb.append((char) ((c2 - '0') + 4));
            return 1;
        } else if (c2 >= 'A' && c2 <= 'Z') {
            sb.append((char) ((c2 - 'A') + 14));
            return 1;
        } else if (c2 < ' ') {
            sb.append((char) 0);
            sb.append(c2);
            return 2;
        } else if (c2 >= '!' && c2 <= '/') {
            sb.append((char) 1);
            sb.append((char) (c2 - '!'));
            return 2;
        } else if (c2 >= ':' && c2 <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c2 - ':') + 15));
            return 2;
        } else if (c2 >= '[' && c2 <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c2 - '[') + 22));
            return 2;
        } else if (c2 < '`' || c2 > 127) {
            sb.append("\u0001\u001e");
            return a((char) (c2 - 128), sb) + 2;
        } else {
            sb.append((char) 2);
            sb.append((char) (c2 - '`'));
            return 2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0079, code lost:
        if (r0 > 2) goto L_0x007c;
     */
    @Override // com.google.zxing.b.a.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.google.zxing.b.a.h r7) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.b.a.c.a(com.google.zxing.b.a.h):void");
    }

    void b(h hVar, StringBuilder sb) {
        int length = sb.length() / 3;
        int length2 = sb.length() % 3;
        int length3 = hVar.e.length() + (length << 1);
        hVar.a(length3);
        int i = hVar.h.f32934b - length3;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                a(hVar, sb);
            }
            if (hVar.b()) {
                hVar.a((char) 254);
            }
        } else if (i == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                a(hVar, sb);
            }
            if (hVar.b()) {
                hVar.a((char) 254);
            }
            hVar.f--;
        } else if (length2 == 0) {
            while (sb.length() >= 3) {
                a(hVar, sb);
            }
            if (i > 0 || hVar.b()) {
                hVar.a((char) 254);
            }
        } else {
            throw new IllegalStateException("Unexpected case. Please report!");
        }
        hVar.g = 0;
    }
}
