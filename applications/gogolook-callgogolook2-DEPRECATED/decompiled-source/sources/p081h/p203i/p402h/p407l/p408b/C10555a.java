package p081h.p203i.p402h.p407l.p408b;
/* renamed from: h.i.h.l.b.a */
/* loaded from: classes2-dex2jar.jar:h/i/h/l/b/a.class */
public final class C10555a implements AbstractC10561g {
    /* renamed from: a */
    public static char m11417a(char c, char c2) {
        if (C10564j.m11368b(c) && C10564j.m11368b(c2)) {
            return (char) (((c - '0') * 10) + (c2 - '0') + 130);
        }
        throw new IllegalArgumentException("not digits: " + c + c2);
    }

    /* renamed from: a */
    public int m11418a() {
        return 0;
    }

    @Override // p081h.p203i.p402h.p407l.p408b.AbstractC10561g
    /* renamed from: a */
    public void mo11346a(C10562h hVar) {
        if (C10564j.m11373a(hVar.m11387d(), hVar.f24041f) >= 2) {
            hVar.m11396a(m11417a(hVar.m11387d().charAt(hVar.f24041f), hVar.m11387d().charAt(hVar.f24041f + 1)));
            hVar.f24041f += 2;
            return;
        }
        char c = hVar.m11389c();
        int a = C10564j.m11372a(hVar.m11387d(), hVar.f24041f, m11418a());
        if (a != m11418a()) {
            if (a == 1) {
                hVar.m11396a((char) 230);
                hVar.m11390b(1);
            } else if (a == 2) {
                hVar.m11396a((char) 239);
                hVar.m11390b(2);
            } else if (a == 3) {
                hVar.m11396a((char) 238);
                hVar.m11390b(3);
            } else if (a == 4) {
                hVar.m11396a((char) 240);
                hVar.m11390b(4);
            } else if (a == 5) {
                hVar.m11396a((char) 231);
                hVar.m11390b(5);
            } else {
                throw new IllegalStateException("Illegal mode: ".concat(String.valueOf(a)));
            }
        } else if (C10564j.m11367c(c)) {
            hVar.m11396a((char) 235);
            hVar.m11396a((char) ((c - 128) + 1));
            hVar.f24041f++;
        } else {
            hVar.m11396a((char) (c + 1));
            hVar.f24041f++;
        }
    }
}
