package p081h.p203i.p402h.p407l.p408b;
/* renamed from: h.i.h.l.b.n */
/* loaded from: classes2-dex2jar.jar:h/i/h/l/b/n.class */
public final class C10568n extends C10557c {
    @Override // p081h.p203i.p402h.p407l.p408b.C10557c
    /* renamed from: a */
    public int mo11348a() {
        return 3;
    }

    @Override // p081h.p203i.p402h.p407l.p408b.C10557c
    /* renamed from: a */
    public int mo11347a(char c, StringBuilder sb) {
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
            C10564j.m11375a(c);
            throw null;
        } else {
            sb.append((char) ((c - 'A') + 14));
            return 1;
        }
    }

    @Override // p081h.p203i.p402h.p407l.p408b.C10557c, p081h.p203i.p402h.p407l.p408b.AbstractC10561g
    /* renamed from: a */
    public void mo11346a(C10562h hVar) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!hVar.m11382i()) {
                break;
            }
            char c = hVar.m11389c();
            hVar.f24041f++;
            mo11347a(c, sb);
            if (sb.length() % 3 == 0) {
                C10557c.m11412b(hVar, sb);
                if (C10564j.m11372a(hVar.m11387d(), hVar.f24041f, mo11348a()) != mo11348a()) {
                    hVar.m11390b(0);
                    break;
                }
            }
        }
        mo11345a(hVar, sb);
    }

    @Override // p081h.p203i.p402h.p407l.p408b.C10557c
    /* renamed from: a */
    public void mo11345a(C10562h hVar, StringBuilder sb) {
        hVar.m11379l();
        int a = hVar.m11384g().m11360a() - hVar.m11397a();
        hVar.f24041f -= sb.length();
        if (hVar.m11385f() > 1 || a > 1 || hVar.m11385f() != a) {
            hVar.m11396a((char) 254);
        }
        if (hVar.m11386e() < 0) {
            hVar.m11390b(0);
        }
    }
}
