package com.google.zxing.p172b.p173a;
/* renamed from: com.google.zxing.b.a.m */
/* loaded from: classes-dex2jar.jar:com/google/zxing/b/a/m.class */
public final class C5093m extends C5083c {
    @Override // com.google.zxing.p172b.p173a.C5083c
    /* renamed from: a */
    public int mo1494a() {
        return 2;
    }

    @Override // com.google.zxing.p172b.p173a.C5083c
    /* renamed from: a */
    int mo1493a(char c, StringBuilder sb) {
        int i = 1;
        if (c == ' ') {
            sb.append((char) 3);
        } else if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
        } else if (c >= 'a' && c <= 'z') {
            sb.append((char) ((c - 'a') + 14));
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
        } else if (c == '`') {
            sb.append((char) 2);
            sb.append((char) (c - '`'));
            i = 2;
        } else if (c >= 'A' && c <= 'Z') {
            sb.append((char) 2);
            sb.append((char) ((c - 'A') + 1));
            i = 2;
        } else if (c < '{' || c > 127) {
            sb.append("\u0001\u001e");
            i = mo1493a((char) (c - 128), sb) + 2;
        } else {
            sb.append((char) 2);
            sb.append((char) ((c - '{') + 27));
            i = 2;
        }
        return i;
    }
}
