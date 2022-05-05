package p081h.p203i.p402h.p407l.p408b;
/* renamed from: h.i.h.l.b.c */
/* loaded from: classes2-dex2jar.jar:h/i/h/l/b/c.class */
public class C10557c implements AbstractC10561g {
    /* renamed from: a */
    public static String m11413a(CharSequence charSequence, int i) {
        int charAt = (charSequence.charAt(i) * 1600) + (charSequence.charAt(i + 1) * '(') + charSequence.charAt(i + 2) + 1;
        return new String(new char[]{(char) (charAt / 256), (char) (charAt % 256)});
    }

    /* renamed from: b */
    public static void m11412b(C10562h hVar, StringBuilder sb) {
        hVar.m11392a(m11413a(sb, 0));
        sb.delete(0, 3);
    }

    /* renamed from: a */
    public int mo11348a() {
        return 1;
    }

    /* renamed from: a */
    public int mo11347a(char c, StringBuilder sb) {
        if (c == ' ') {
            sb.append((char) 3);
            return 1;
        } else if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        } else if (c >= 'A' && c <= 'Z') {
            sb.append((char) ((c - 'A') + 14));
            return 1;
        } else if (c < ' ') {
            sb.append((char) 0);
            sb.append(c);
            return 2;
        } else if (c >= '!' && c <= '/') {
            sb.append((char) 1);
            sb.append((char) (c - '!'));
            return 2;
        } else if (c >= ':' && c <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c - ':') + 15));
            return 2;
        } else if (c >= '[' && c <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c - '[') + 22));
            return 2;
        } else if (c < '`' || c > 127) {
            sb.append("\u0001\u001e");
            return mo11347a((char) (c - 128), sb) + 2;
        } else {
            sb.append((char) 2);
            sb.append((char) (c - '`'));
            return 2;
        }
    }

    /* renamed from: a */
    public final int m11414a(C10562h hVar, StringBuilder sb, StringBuilder sb2, int i) {
        int length = sb.length();
        sb.delete(length - i, length);
        hVar.f24041f--;
        int a = mo11347a(hVar.m11389c(), sb2);
        hVar.m11380k();
        return a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0076, code lost:
        if (r0 > 2) goto L_0x0079;
     */
    @Override // p081h.p203i.p402h.p407l.p408b.AbstractC10561g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo11346a(p081h.p203i.p402h.p407l.p408b.C10562h r7) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p402h.p407l.p408b.C10557c.mo11346a(h.i.h.l.b.h):void");
    }

    /* renamed from: a */
    public void mo11345a(C10562h hVar, StringBuilder sb) {
        int length = sb.length() / 3;
        int length2 = sb.length() % 3;
        int a = hVar.m11397a() + (length << 1);
        hVar.m11388c(a);
        int a2 = hVar.m11384g().m11360a() - a;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                m11412b(hVar, sb);
            }
            if (hVar.m11382i()) {
                hVar.m11396a((char) 254);
            }
        } else if (a2 == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                m11412b(hVar, sb);
            }
            if (hVar.m11382i()) {
                hVar.m11396a((char) 254);
            }
            hVar.f24041f--;
        } else if (length2 == 0) {
            while (sb.length() >= 3) {
                m11412b(hVar, sb);
            }
            if (a2 > 0 || hVar.m11382i()) {
                hVar.m11396a((char) 254);
            }
        } else {
            throw new IllegalStateException("Unexpected case. Please report!");
        }
        hVar.m11390b(0);
    }
}
