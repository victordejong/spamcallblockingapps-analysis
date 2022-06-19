package com.google.zxing.p172b.p173a;
/* renamed from: com.google.zxing.b.a.b */
/* loaded from: classes-dex2jar.jar:com/google/zxing/b/a/b.class */
public final class C5082b implements AbstractC5087g {
    /* renamed from: a */
    private static char m1561a(char c, int i) {
        int i2 = ((i * 149) % 255) + 1 + c;
        return i2 <= 255 ? (char) i2 : (char) (i2 - 256);
    }

    /* renamed from: a */
    public int m1562a() {
        return 5;
    }

    @Override // com.google.zxing.p172b.p173a.AbstractC5087g
    /* renamed from: a */
    public void mo1492a(C5088h c5088h) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!c5088h.m1530g()) {
                break;
            }
            sb.append(c5088h.m1537b());
            c5088h.f21531a++;
            if (C5090j.m1518a(c5088h.m1543a(), c5088h.f21531a, m1562a()) != m1562a()) {
                c5088h.m1536b(0);
                break;
            }
        }
        int length = sb.length() - 1;
        int m1533d = c5088h.m1533d() + length + 1;
        c5088h.m1534c(m1533d);
        boolean z = c5088h.m1528i().m1498f() - m1533d > 0;
        if (c5088h.m1530g() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else if (length > 1555) {
                throw new IllegalStateException("Message length not in valid ranges: ".concat(String.valueOf(length)));
            } else {
                sb.setCharAt(0, (char) ((length / 250) + 249));
                sb.insert(1, (char) (length % 250));
            }
        }
        int length2 = sb.length();
        for (int i = 0; i < length2; i++) {
            c5088h.m1542a(m1561a(sb.charAt(i), c5088h.m1533d() + 1));
        }
    }
}
