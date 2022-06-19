package com.google.zxing.p406b.p407a;
/* renamed from: com.google.zxing.b.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/a.class */
public final class C16151a implements AbstractC16157g {
    @Override // com.google.zxing.p406b.p407a.AbstractC16157g
    /* renamed from: a */
    public final void mo7704a(C16158h c16158h) {
        int i;
        String str = c16158h.f57079a;
        int i2 = c16158h.f57084f;
        int length = str.length();
        if (i2 < length) {
            int i3 = 0;
            char charAt = str.charAt(i2);
            while (true) {
                i = i3;
                if (!C16160j.m7724a(charAt)) {
                    break;
                }
                i = i3;
                if (i2 >= length) {
                    break;
                }
                int i4 = i3 + 1;
                int i5 = i2 + 1;
                i2 = i5;
                i3 = i4;
                if (i5 < length) {
                    i2 = i5;
                    charAt = str.charAt(i5);
                    i3 = i4;
                }
            }
        } else {
            i = 0;
        }
        if (i >= 2) {
            char charAt2 = c16158h.f57079a.charAt(c16158h.f57084f);
            char charAt3 = c16158h.f57079a.charAt(c16158h.f57084f + 1);
            if (C16160j.m7724a(charAt2) && C16160j.m7724a(charAt3)) {
                c16158h.m7734a((char) (((charAt2 - '0') * 10) + (charAt3 - '0') + 130));
                c16158h.f57084f += 2;
                return;
            }
            throw new IllegalArgumentException("not digits: " + charAt2 + charAt3);
        }
        char m7735a = c16158h.m7735a();
        int m7723a = C16160j.m7723a(c16158h.f57079a, c16158h.f57084f, 0);
        if (m7723a == 0) {
            if (!C16160j.m7719b(m7735a)) {
                c16158h.m7734a((char) (m7735a + 1));
                c16158h.f57084f++;
                return;
            }
            c16158h.m7734a((char) 235);
            c16158h.m7734a((char) ((m7735a - 128) + 1));
            c16158h.f57084f++;
        } else if (m7723a == 1) {
            c16158h.m7734a((char) 230);
            c16158h.f57085g = 1;
        } else if (m7723a == 2) {
            c16158h.m7734a((char) 239);
            c16158h.f57085g = 2;
        } else if (m7723a == 3) {
            c16158h.m7734a((char) 238);
            c16158h.f57085g = 3;
        } else if (m7723a == 4) {
            c16158h.m7734a((char) 240);
            c16158h.f57085g = 4;
        } else if (m7723a != 5) {
            throw new IllegalStateException("Illegal mode: ".concat(String.valueOf(m7723a)));
        } else {
            c16158h.m7734a((char) 231);
            c16158h.f57085g = 5;
        }
    }
}
