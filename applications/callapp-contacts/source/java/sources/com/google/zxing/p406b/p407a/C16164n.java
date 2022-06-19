package com.google.zxing.p406b.p407a;
/* renamed from: com.google.zxing.b.a.n */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/n.class */
public final class C16164n extends C16153c {
    @Override // com.google.zxing.p406b.p407a.C16153c
    /* renamed from: a */
    public final int mo7706a() {
        return 3;
    }

    @Override // com.google.zxing.p406b.p407a.C16153c
    /* renamed from: a */
    final int mo7705a(char c, StringBuilder sb) {
        if (c == '\r') {
            sb.append((char) 0);
            return 1;
        } else if (c == ' ') {
            sb.append((char) 3);
            return 1;
        } else if (c == '*') {
            sb.append((char) 1);
            return 1;
        } else if (c == '>') {
            sb.append((char) 2);
            return 1;
        } else if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        } else if (c < 'A' || c > 'Z') {
            C16160j.m7718c(c);
            return 1;
        } else {
            sb.append((char) ((c - 'A') + 14));
            return 1;
        }
    }

    @Override // com.google.zxing.p406b.p407a.C16153c, com.google.zxing.p406b.p407a.AbstractC16157g
    /* renamed from: a */
    public final void mo7704a(C16158h c16158h) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!c16158h.m7731b()) {
                break;
            }
            char m7735a = c16158h.m7735a();
            c16158h.f57084f++;
            mo7705a(m7735a, sb);
            if (sb.length() % 3 == 0) {
                m7743a(c16158h, sb);
                if (C16160j.m7723a(c16158h.f57079a, c16158h.f57084f, 3) != 3) {
                    c16158h.f57085g = 0;
                    break;
                }
            }
        }
        mo7703b(c16158h, sb);
    }

    @Override // com.google.zxing.p406b.p407a.C16153c
    /* renamed from: b */
    final void mo7703b(C16158h c16158h, StringBuilder sb) {
        c16158h.m7729d();
        int length = c16158h.f57086h.f57094b - c16158h.f57083e.length();
        c16158h.f57084f -= sb.length();
        if (c16158h.m7730c() > 1 || length > 1 || c16158h.m7730c() != length) {
            c16158h.m7734a((char) 254);
        }
        if (c16158h.f57085g < 0) {
            c16158h.f57085g = 0;
        }
    }
}
