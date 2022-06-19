package com.google.zxing.p172b.p173a;
/* renamed from: com.google.zxing.b.a.a */
/* loaded from: classes-dex2jar.jar:com/google/zxing/b/a/a.class */
public final class C5081a implements AbstractC5087g {
    /* renamed from: a */
    private static char m1563a(char c, char c2) {
        if (!C5090j.m1521a(c) || !C5090j.m1521a(c2)) {
            throw new IllegalArgumentException("not digits: " + c + c2);
        }
        return (char) (((c - '0') * 10) + (c2 - '0') + 130);
    }

    /* renamed from: a */
    public int m1564a() {
        return 0;
    }

    @Override // com.google.zxing.p172b.p173a.AbstractC5087g
    /* renamed from: a */
    public void mo1492a(C5088h c5088h) {
        if (C5090j.m1519a(c5088h.m1543a(), c5088h.f21531a) >= 2) {
            c5088h.m1542a(m1563a(c5088h.m1543a().charAt(c5088h.f21531a), c5088h.m1543a().charAt(c5088h.f21531a + 1)));
            c5088h.f21531a += 2;
            return;
        }
        char m1537b = c5088h.m1537b();
        int m1518a = C5090j.m1518a(c5088h.m1543a(), c5088h.f21531a, m1564a());
        if (m1518a == m1564a()) {
            if (!C5090j.m1514b(m1537b)) {
                c5088h.m1542a((char) (m1537b + 1));
                c5088h.f21531a++;
                return;
            }
            c5088h.m1542a((char) 235);
            c5088h.m1542a((char) ((m1537b - 128) + 1));
            c5088h.f21531a++;
            return;
        }
        switch (m1518a) {
            case 1:
                c5088h.m1542a((char) 230);
                c5088h.m1536b(1);
                return;
            case 2:
                c5088h.m1542a((char) 239);
                c5088h.m1536b(2);
                return;
            case 3:
                c5088h.m1542a((char) 238);
                c5088h.m1536b(3);
                return;
            case 4:
                c5088h.m1542a((char) 240);
                c5088h.m1536b(4);
                return;
            case 5:
                c5088h.m1542a((char) 231);
                c5088h.m1536b(5);
                return;
            default:
                throw new IllegalStateException("Illegal mode: ".concat(String.valueOf(m1518a)));
        }
    }
}
