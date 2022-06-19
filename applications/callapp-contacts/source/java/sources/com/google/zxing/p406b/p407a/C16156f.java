package com.google.zxing.p406b.p407a;
/* renamed from: com.google.zxing.b.a.f */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/f.class */
public final class C16156f implements AbstractC16157g {
    /* renamed from: a */
    private static String m7736a(CharSequence charSequence) {
        char c = 0;
        int length = charSequence.length() - 0;
        if (length != 0) {
            char charAt = charSequence.charAt(0);
            char charAt2 = length >= 2 ? charSequence.charAt(1) : (char) 0;
            char charAt3 = length >= 3 ? charSequence.charAt(2) : (char) 0;
            if (length >= 4) {
                c = charSequence.charAt(3);
            }
            int i = (charAt << 18) + (charAt2 << '\f') + (charAt3 << 6) + c;
            char c2 = (char) ((i >> 16) & 255);
            char c3 = (char) ((i >> 8) & 255);
            char c4 = (char) (i & 255);
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
        throw new IllegalStateException("StringBuilder must not be empty");
    }

    @Override // com.google.zxing.p406b.p407a.AbstractC16157g
    /* renamed from: a */
    public final void mo7704a(C16158h c16158h) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!c16158h.m7731b()) {
                break;
            }
            char m7735a = c16158h.m7735a();
            if (m7735a >= ' ' && m7735a <= '?') {
                sb.append(m7735a);
            } else if (m7735a < '@' || m7735a > '^') {
                C16160j.m7718c(m7735a);
            } else {
                sb.append((char) (m7735a - '@'));
            }
            c16158h.f57084f++;
            if (sb.length() >= 4) {
                c16158h.m7732a(m7736a(sb));
                sb.delete(0, 4);
                if (C16160j.m7723a(c16158h.f57079a, c16158h.f57084f, 4) != 4) {
                    c16158h.f57085g = 0;
                    break;
                }
            }
        }
        sb.append((char) 31);
        try {
            int length = sb.length();
            if (length == 0) {
                return;
            }
            if (length == 1) {
                c16158h.m7729d();
                int length2 = c16158h.f57086h.f57094b - c16158h.f57083e.length();
                int m7730c = c16158h.m7730c();
                int i = length2;
                if (m7730c > length2) {
                    c16158h.m7733a(c16158h.f57083e.length() + 1);
                    i = c16158h.f57086h.f57094b - c16158h.f57083e.length();
                }
                if (m7730c <= i && i <= 2) {
                    return;
                }
            }
            if (length > 4) {
                throw new IllegalStateException("Count must not exceed 4");
            }
            int i2 = length - 1;
            String m7736a = m7736a(sb);
            boolean z = (c16158h.m7731b() ^ true) && i2 <= 2;
            boolean z2 = z;
            if (i2 <= 2) {
                c16158h.m7733a(c16158h.f57083e.length() + i2);
                z2 = z;
                if (c16158h.f57086h.f57094b - c16158h.f57083e.length() >= 3) {
                    c16158h.m7733a(c16158h.f57083e.length() + m7736a.length());
                    z2 = false;
                }
            }
            if (z2) {
                c16158h.f57086h = null;
                c16158h.f57084f -= i2;
            } else {
                c16158h.m7732a(m7736a);
            }
        } finally {
            c16158h.f57085g = 0;
        }
    }
}
