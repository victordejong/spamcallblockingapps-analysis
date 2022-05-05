package p081h.p203i.p402h.p407l.p408b;
/* renamed from: h.i.h.l.b.m */
/* loaded from: classes2-dex2jar.jar:h/i/h/l/b/m.class */
public final class C10567m extends C10557c {
    @Override // p081h.p203i.p402h.p407l.p408b.C10557c
    /* renamed from: a */
    public int mo11348a() {
        return 2;
    }

    @Override // p081h.p203i.p402h.p407l.p408b.C10557c
    /* renamed from: a */
    public int mo11347a(char c, StringBuilder sb) {
        if (c == ' ') {
            sb.append((char) 3);
            return 1;
        } else if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        } else if (c >= 'a' && c <= 'z') {
            sb.append((char) ((c - 'a') + 14));
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
        } else if (c == '`') {
            sb.append((char) 2);
            sb.append((char) (c - '`'));
            return 2;
        } else if (c >= 'A' && c <= 'Z') {
            sb.append((char) 2);
            sb.append((char) ((c - 'A') + 1));
            return 2;
        } else if (c < '{' || c > 127) {
            sb.append("\u0001\u001e");
            return mo11347a((char) (c - 128), sb) + 2;
        } else {
            sb.append((char) 2);
            sb.append((char) ((c - '{') + 27));
            return 2;
        }
    }
}
