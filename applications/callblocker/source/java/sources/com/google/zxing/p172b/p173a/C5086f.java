package com.google.zxing.p172b.p173a;
/* renamed from: com.google.zxing.b.a.f */
/* loaded from: classes-dex2jar.jar:com/google/zxing/b/a/f.class */
public final class C5086f implements AbstractC5087g {
    /* renamed from: a */
    private static String m1544a(CharSequence charSequence, int i) {
        char c = 0;
        int length = charSequence.length() - i;
        if (length == 0) {
            throw new IllegalStateException("StringBuilder must not be empty");
        }
        char charAt = charSequence.charAt(i);
        char charAt2 = length >= 2 ? charSequence.charAt(i + 1) : (char) 0;
        char charAt3 = length >= 3 ? charSequence.charAt(i + 2) : (char) 0;
        if (length >= 4) {
            c = charSequence.charAt(i + 3);
        }
        int i2 = c + (charAt3 << 6) + (charAt2 << '\f') + (charAt << 18);
        char c2 = (char) ((i2 >> 16) & 255);
        char c3 = (char) ((i2 >> 8) & 255);
        char c4 = (char) (i2 & 255);
        StringBuilder sb = new StringBuilder(3);
        sb.append(c2);
        if (length >= 2) {
            sb.append(c3);
        }
        if (length >= 3) {
            sb.append(c4);
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m1546a(char c, StringBuilder sb) {
        if (c >= ' ' && c <= '?') {
            sb.append(c);
        } else if (c < '@' || c > '^') {
            C5090j.m1513c(c);
        } else {
            sb.append((char) (c - '@'));
        }
    }

    /* renamed from: a */
    private static void m1545a(C5088h c5088h, CharSequence charSequence) {
        try {
            int length = charSequence.length();
            if (length == 0) {
                return;
            }
            if (length == 1) {
                c5088h.m1527j();
                int m1498f = c5088h.m1528i().m1498f() - c5088h.m1533d();
                int m1529h = c5088h.m1529h();
                int i = m1498f;
                if (m1529h > m1498f) {
                    c5088h.m1534c(c5088h.m1533d() + 1);
                    i = c5088h.m1528i().m1498f() - c5088h.m1533d();
                }
                if (m1529h <= i && i <= 2) {
                    return;
                }
            }
            if (length > 4) {
                throw new IllegalStateException("Count must not exceed 4");
            }
            int i2 = length - 1;
            String m1544a = m1544a(charSequence, 0);
            boolean z = (!c5088h.m1530g()) && i2 <= 2;
            boolean z2 = z;
            if (i2 <= 2) {
                c5088h.m1534c(c5088h.m1533d() + i2);
                z2 = z;
                if (c5088h.m1528i().m1498f() - c5088h.m1533d() >= 3) {
                    c5088h.m1534c(c5088h.m1533d() + m1544a.length());
                    z2 = false;
                }
            }
            if (z2) {
                c5088h.m1526k();
                c5088h.f21531a -= i2;
            } else {
                c5088h.m1538a(m1544a);
            }
        } finally {
            c5088h.m1536b(0);
        }
    }

    /* renamed from: a */
    public int m1547a() {
        return 4;
    }

    @Override // com.google.zxing.p172b.p173a.AbstractC5087g
    /* renamed from: a */
    public void mo1492a(C5088h c5088h) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!c5088h.m1530g()) {
                break;
            }
            m1546a(c5088h.m1537b(), sb);
            c5088h.f21531a++;
            if (sb.length() >= 4) {
                c5088h.m1538a(m1544a(sb, 0));
                sb.delete(0, 4);
                if (C5090j.m1518a(c5088h.m1543a(), c5088h.f21531a, m1547a()) != m1547a()) {
                    c5088h.m1536b(0);
                    break;
                }
            }
        }
        sb.append((char) 31);
        m1545a(c5088h, sb);
    }
}
