package com.google.zxing.p172b.p173a;
/* renamed from: com.google.zxing.b.a.n */
/* loaded from: classes-dex2jar.jar:com/google/zxing/b/a/n.class */
public final class C5094n extends C5083c {
    @Override // com.google.zxing.p172b.p173a.C5083c
    /* renamed from: a */
    public int mo1494a() {
        return 3;
    }

    @Override // com.google.zxing.p172b.p173a.C5083c
    /* renamed from: a */
    int mo1493a(char c, StringBuilder sb) {
        switch (c) {
            case '\r':
                sb.append((char) 0);
                return 1;
            case ' ':
                sb.append((char) 3);
                return 1;
            case '*':
                sb.append((char) 1);
                return 1;
            case '>':
                sb.append((char) 2);
                return 1;
            default:
                if (c >= '0' && c <= '9') {
                    sb.append((char) ((c - '0') + 4));
                    return 1;
                } else if (c < 'A' || c > 'Z') {
                    C5090j.m1513c(c);
                    return 1;
                } else {
                    sb.append((char) ((c - 'A') + 14));
                    return 1;
                }
        }
    }

    @Override // com.google.zxing.p172b.p173a.C5083c, com.google.zxing.p172b.p173a.AbstractC5087g
    /* renamed from: a */
    public void mo1492a(C5088h c5088h) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!c5088h.m1530g()) {
                break;
            }
            char m1537b = c5088h.m1537b();
            c5088h.f21531a++;
            mo1493a(m1537b, sb);
            if (sb.length() % 3 == 0) {
                m1560a(c5088h, sb);
                if (C5090j.m1518a(c5088h.m1543a(), c5088h.f21531a, mo1494a()) != mo1494a()) {
                    c5088h.m1536b(0);
                    break;
                }
            }
        }
        mo1491b(c5088h, sb);
    }

    @Override // com.google.zxing.p172b.p173a.C5083c
    /* renamed from: b */
    void mo1491b(C5088h c5088h, StringBuilder sb) {
        c5088h.m1527j();
        int m1498f = c5088h.m1528i().m1498f() - c5088h.m1533d();
        c5088h.f21531a -= sb.length();
        if (c5088h.m1529h() > 1 || m1498f > 1 || c5088h.m1529h() != m1498f) {
            c5088h.m1542a((char) 254);
        }
        if (c5088h.m1532e() < 0) {
            c5088h.m1536b(0);
        }
    }
}
