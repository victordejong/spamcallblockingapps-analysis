package p081h.p203i.p402h.p407l.p408b;
/* renamed from: h.i.h.l.b.f */
/* loaded from: classes2-dex2jar.jar:h/i/h/l/b/f.class */
public final class C10560f implements AbstractC10561g {
    /* renamed from: a */
    public static String m11398a(CharSequence charSequence, int i) {
        int length = charSequence.length() - i;
        if (length != 0) {
            char charAt = charSequence.charAt(i);
            char c = 0;
            char charAt2 = length >= 2 ? charSequence.charAt(i + 1) : (char) 0;
            char charAt3 = length >= 3 ? charSequence.charAt(i + 2) : (char) 0;
            if (length >= 4) {
                c = charSequence.charAt(i + 3);
            }
            int i2 = (charAt << 18) + (charAt2 << '\f') + (charAt3 << 6) + c;
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
        throw new IllegalStateException("StringBuilder must not be empty");
    }

    /* renamed from: a */
    public static void m11400a(char c, StringBuilder sb) {
        if (c >= ' ' && c <= '?') {
            sb.append(c);
        } else if (c < '@' || c > '^') {
            C10564j.m11375a(c);
            throw null;
        } else {
            sb.append((char) (c - '@'));
        }
    }

    /* renamed from: a */
    public static void m11399a(C10562h hVar, CharSequence charSequence) {
        try {
            int length = charSequence.length();
            if (length != 0) {
                boolean z = true;
                if (length == 1) {
                    hVar.m11379l();
                    int a = hVar.m11384g().m11360a() - hVar.m11397a();
                    int f = hVar.m11385f();
                    int i = a;
                    if (f > a) {
                        hVar.m11388c(hVar.m11397a() + 1);
                        i = hVar.m11384g().m11360a() - hVar.m11397a();
                    }
                    if (f <= i && i <= 2) {
                        return;
                    }
                }
                if (length <= 4) {
                    int i2 = length - 1;
                    String a2 = m11398a(charSequence, 0);
                    if (!(!hVar.m11382i()) || i2 > 2) {
                        z = false;
                    }
                    boolean z2 = z;
                    if (i2 <= 2) {
                        hVar.m11388c(hVar.m11397a() + i2);
                        z2 = z;
                        if (hVar.m11384g().m11360a() - hVar.m11397a() >= 3) {
                            hVar.m11388c(hVar.m11397a() + a2.length());
                            z2 = false;
                        }
                    }
                    if (z2) {
                        hVar.m11380k();
                        hVar.f24041f -= i2;
                    } else {
                        hVar.m11392a(a2);
                    }
                    return;
                }
                throw new IllegalStateException("Count must not exceed 4");
            }
        } finally {
            hVar.m11390b(0);
        }
    }

    /* renamed from: a */
    public int m11401a() {
        return 4;
    }

    @Override // p081h.p203i.p402h.p407l.p408b.AbstractC10561g
    /* renamed from: a */
    public void mo11346a(C10562h hVar) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!hVar.m11382i()) {
                break;
            }
            m11400a(hVar.m11389c(), sb);
            hVar.f24041f++;
            if (sb.length() >= 4) {
                hVar.m11392a(m11398a(sb, 0));
                sb.delete(0, 4);
                if (C10564j.m11372a(hVar.m11387d(), hVar.f24041f, m11401a()) != m11401a()) {
                    hVar.m11390b(0);
                    break;
                }
            }
        }
        sb.append((char) 31);
        m11399a(hVar, sb);
    }
}
